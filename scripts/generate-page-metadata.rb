# frozen_string_literal: true

require "fileutils"
require "open3"
require "yaml"

root = File.expand_path("..", __dir__)

tracked_markdown, status = Open3.capture2("git", "ls-files", "*.md", chdir: root)
abort "Could not read tracked Markdown files" unless status.success?

metadata = {}

tracked_markdown.lines.map(&:strip).sort.each do |path|
  source = File.read(File.join(root, path), encoding: "UTF-8")
  next unless source.start_with?("---")
  next if path.start_with?("templates/")

  commit_output, commit_status = Open3.capture2(
    "git", "log", "--follow", "--format=%H", "--", path, chdir: root
  )
  date_output, date_status = Open3.capture2(
    "git", "log", "--follow", "--max-count=1", "--format=%cs", "--", path, chdir: root
  )
  next unless commit_status.success? && date_status.success?

  commits = commit_output.lines.map(&:strip).reject(&:empty?)
  updated_at = date_output.lines.first&.strip
  next if commits.empty? || updated_at.nil? || updated_at.empty?

  metadata[path] = {
    "updated_at" => updated_at,
    "version" => commits.length
  }
end

data_directory = File.join(root, "_data")
FileUtils.mkdir_p(data_directory)
File.write(
  File.join(data_directory, "page_git_metadata.yml"),
  YAML.dump(metadata),
  mode: "w",
  encoding: "UTF-8"
)
