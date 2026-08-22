# DaSte-Labs

Markdown-based GitHub Pages website with the Physicals, Digitals, Résumé and Impressum root categories. The Digitals pages use a flat structure without an additional HomeLab hierarchy.

The footer displays metadata derived from Git for each individual page: its update date is the date of the most recent commit affecting that page, and its version is the number of commits that changed the page's Markdown source file. The GitHub Pages workflow checks out the complete history so these values are also available in production.

## Creating an article

1. Copy `templates/article.md`.
2. Save the copy in the appropriate category, for example as `category/my-article.md`.
3. Update `title`, `description` and `permalink` in the front matter.
4. Link the new article under **Articles** in the category's `index.md`.
5. Store images under `assets/images/category/` and include them using `relative_url`.

Example article at `digital/proxmox.md`:

```yaml
---
layout: page
title: "My Proxmox server"
description: "Installing and configuring my Proxmox server"
permalink: /digitals/proxmox/
---
```

The corresponding link on the category page is:

```markdown
- [My Proxmox server](proxmox/)
```

## Publishing

The website is built and deployed automatically by GitHub Actions after every push to the `main` branch.

In the GitHub repository, select **GitHub Actions** once under **Settings → Pages → Build and deployment → Source**.

The website will then be available at <https://dstegmaier48-png.github.io/labsite/>.

## ChangeLog maintenance

Every website change must update the **ChangeLog** section in `index.md`. Add the newest commit at the top and retain no more than the five most recent commits. Each entry must include the commit date, abbreviated commit hash with a GitHub link, and a concise English summary of the change.
