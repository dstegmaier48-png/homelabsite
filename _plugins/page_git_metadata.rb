# frozen_string_literal: true

require "open3"

module Jekyll
  class PageGitMetadataGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      site.pages.each do |page|
        next unless page.path

        commits = git_lines(site.source, "log", "--follow", "--format=%H", "--", page.path)
        last_commit_date = git_lines(
          site.source,
          "log",
          "--follow",
          "--max-count=1",
          "--format=%cs",
          "--",
          page.path
        ).first

        page.data["git_version"] = commits.length
        page.data["git_updated_at"] = last_commit_date if last_commit_date
      end
    end

    private

    def git_lines(repository, *arguments)
      output, status = Open3.capture2("git", *arguments, chdir: repository)
      return [] unless status.success?

      output.lines.map(&:strip).reject(&:empty?)
    rescue Errno::ENOENT
      []
    end
  end
end
