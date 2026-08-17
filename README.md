# HomeLab Site

Markdown-basierte Website für GitHub Pages mit den Rubriken HomeLab, Renovation, „Hidde“ Gardening, DIY, Digital und Energy.

## Neuen Beitrag anlegen

1. `templates/beitrag.md` kopieren.
2. Die Kopie in der passenden Rubrik als `rubrik/mein-beitrag.md` speichern.
3. Im Front Matter `title`, `description` und `permalink` anpassen.
4. Den neuen Beitrag in `rubrik/index.md` unter **Inhalte** verlinken.
5. Bilder unter `assets/images/rubrik/` ablegen und mit `relative_url` einbinden.

Beispiel für einen Beitrag unter `homelab/proxmox.md`:

```yaml
---
layout: page
title: "Mein Proxmox-Server"
description: "Installation und Konfiguration meines Proxmox-Servers"
permalink: /homelab/proxmox/
---
```

Der Link auf der Rubrikseite lautet dann:

```markdown
- [Mein Proxmox-Server](proxmox/)
```

## Veröffentlichung

Die Website wird bei jedem Push auf den Branch `main` automatisch über GitHub Actions gebaut und veröffentlicht.

Einmalig im GitHub-Repository unter **Settings → Pages → Build and deployment → Source** die Option **GitHub Actions** auswählen.

Danach ist die Website unter <https://dstegmaier48-png.github.io/homelabsite/> erreichbar.

