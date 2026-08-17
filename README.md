# HomeLab Site

Markdown-based GitHub Pages website with the HomeLab, Renovation, “Hidde” Gardening, DIY, Digital and Energy categories.

## Creating an article

1. Copy `templates/article.md`.
2. Save the copy in the appropriate category, for example as `category/my-article.md`.
3. Update `title`, `description` and `permalink` in the front matter.
4. Link the new article under **Articles** in the category's `index.md`.
5. Store images under `assets/images/category/` and include them using `relative_url`.

Example article at `homelab/proxmox.md`:

```yaml
---
layout: page
title: "My Proxmox server"
description: "Installing and configuring my Proxmox server"
permalink: /homelab/proxmox/
---
```

The corresponding link on the category page is:

```markdown
- [My Proxmox server](proxmox/)
```

## Publishing

The website is built and deployed automatically by GitHub Actions after every push to the `main` branch.

In the GitHub repository, select **GitHub Actions** once under **Settings → Pages → Build and deployment → Source**.

The website will then be available at <https://dstegmaier48-png.github.io/homelabsite/>.

## Legal pages

Before publishing, replace every `REPLACE BEFORE PUBLISHING` placeholder in `legal-notice.md` and `privacy-policy.md` with the website owner's real details. Name, a serviceable postal address and email address must not remain placeholders on the public website.
