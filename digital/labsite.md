---
layout: page
title: LabSite
description: Context and publishing workflow for the personal LabSite built with Markdown, Git, Jekyll and GitHub Pages.
permalink: /digital/labsite/
---

# LabSite

This personal lab website uses Markdown as its editorial source, Git and GitHub as its traceable source of truth, GitHub Actions for reproducible builds, and GitHub Pages for public delivery.

![Context overview of the personal LabSite workflow from local Markdown authoring through GitHub Actions and Jekyll to GitHub Pages]({{ '/assets/images/digital/labsite/context-overview.png' | relative_url }})

## Workflow overview

**Markdown → Git → automated Jekyll build → publishing with GitHub Pages**

### 1. Create locally

The author and site owner provides ideas, content and approval. VS Code and OpenAI Codex support the local workflow by helping to:

- Write and structure content
- Preview, test and debug changes
- Assist with Git commands

The local Jekyll project contains:

- Markdown pages and posts
- The `_config.yml` site configuration
- Layouts and includes
- CSS and image assets
- GitHub Actions workflow automation

### 2. Version and build

Changes are committed and pushed to the GitHub repository. Git provides version history, branches and pull requests, while the repository stores the Markdown content, templates, assets and workflows.

A push or merge to the `main` branch triggers GitHub Actions. The workflow checks out the repository, prepares the build environment and runs Jekyll. Jekyll combines Markdown, layouts and assets to generate static HTML, CSS and JavaScript files as a deployable artifact.

### 3. Publish

The generated artifact is deployed to GitHub Pages. GitHub Pages hosts the site over HTTPS and delivers the personal LabSite to visitors and their devices. The published result makes projects, notes and experiments publicly available in a browser.

## Guiding principle

Markdown is the editorial source. GitHub is the traceable source of truth. GitHub Actions reproduces the build, and GitHub Pages delivers the result.

---

[Back to Digital]({{ '/digital/' | relative_url }}) · [Back to the home page]({{ '/' | relative_url }})
