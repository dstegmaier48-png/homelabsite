---
layout: page
title: Software
description: Current HomeLab software, virtualisation platform, dashboards, home automation and container services.
permalink: /digital/homelab/software/
---

# Software

This page documents the software running across the HomeLab. The information below was transcribed and summarised from screenshots captured on 17 August 2026. Status values are a snapshot from that date rather than a live service monitor.

## Platform overview

The environment is built around Proxmox Virtual Environment and several Linux and Windows guests. Portainer is used to manage container stacks, Homepage provides a central service dashboard, and Home Assistant handles monitoring and automation.

| Layer | Software | Role |
|---|---|---|
| Virtualisation | Proxmox Virtual Environment 9.2.2 | Runs the HomeLab virtual machines and containers |
| Containers | Portainer | Manages Docker stacks and container workloads |
| Dashboard | Homepage | Central entry point and service-status overview |
| Automation | Home Assistant | Home automation, sensors, switches and energy monitoring |
| Monitoring | Uptime Kuma, WhatsUpDocker, MySpeed and UpSnap | Availability, update, network-speed and wake-up management |
| AI | LM Studio/OpenWebUI, Ollama/OpenWebUI, Stable Diffusion and Whisper | Local AI inference, image generation and speech processing |
| Storage and backup | Duplicati, OneDrive and Syncthing | Backup and file synchronisation |

## Homepage dashboard

![Homepage dashboard with main containers, AI and secondary containers, local network services and a calendar]({{ '/assets/images/digital/homelab/software/homepage-dashboard.png' | relative_url }})

The Homepage dashboard groups the environment into three main areas:

- **Main containers:** Home Assistant, Portainer, WhatsUpDocker, File Browser, MySpeed, UpSnap, Roundcube, Ollama WebUI, Open WebUI, Open Notebook, Automatic1111 and Notemark.
- **AI and secondary containers:** Uptime Kuma, IT-Tools, Linux Cockpit, Duplicati, Zigbee2MQTT, Excalidraw, Prunemate, Dozzle, Dockhand, OpenProject, n8n, Stellantis OAuth, SearXNG and additional Portainer and File Browser instances.
- **Local network:** network endpoints, Cisco switching, Fronius, Shelly, the Proxmox host, NAS services and Dockhand.

The screenshot also shows status and monitoring widgets, including Home Assistant temperatures, Portainer update information, Uptime Kuma availability and a calendar integration. Some dashboard integrations were reporting API errors when the screenshot was taken.

## Proxmox Virtual Environment

![Proxmox Virtual Environment node overview]({{ '/assets/images/digital/homelab/software/proxmox-overview.png' | relative_url }})

The screenshot shows node `arotprx01` running Proxmox Virtual Environment 9.2.2.

| Property | Captured value |
|---|---|
| CPU | 18 × Intel Core Ultra 5 125H |
| CPU usage | 0.45% |
| Memory | 25.46 GiB of 30.83 GiB used |
| Root disk | 17.84 GiB of 93.93 GiB used |
| Swap | 16 KiB of 8 GiB used |
| Kernel | Linux 7.0.2-6-pve |
| Boot mode | EFI |
| Uptime | 11 days, 22 hours and 5 minutes |

Visible guests include a Twingate connector, three Linux guests and one Windows guest. Local, LVM and NAS-backed storage entries are configured on the node.

## Home Assistant

![Home Assistant dashboard with power, temperature, humidity, weather and switch controls]({{ '/assets/images/digital/homelab/software/home-assistant-dashboard.png' | relative_url }})

Home Assistant provides the central automation and sensor interface. The captured dashboard includes:

- Home server power consumption and photovoltaic power
- Outdoor temperature
- Temperature and humidity sensors
- Local weather and precipitation information
- Room and appliance measurements
- Ventilation, lighting, heating and garage controls
- Camera and thermostat integrations
- Dedicated views for vehicles, energy, Fronius and individual HomeLab systems

## Portainer stacks

The screenshots show the following unique stacks. “Inactive” reflects the orange status badge visible in Portainer; entries without that badge are listed as “No inactive badge shown” rather than assumed to be healthy.

| Stack | Screenshot status | Function |
|---|---|---|
| automatic111stablediffusion | Inactive | Stable Diffusion image generation |
| crafty | Inactive | Crafty game-server management |
| dockhand | No inactive badge shown | Docker management |
| dozzle | No inactive badge shown | Container log viewer |
| duplicati | No inactive badge shown | Backup management |
| excalidraw | No inactive badge shown | Collaborative diagrams |
| faster-whisper | No inactive badge shown | Speech-to-text processing |
| filebrowser | No inactive badge shown | Browser-based file management |
| frigate | Inactive | Network video recording and detection |
| homeassistant | No inactive badge shown | Home automation |
| homepage | No inactive badge shown | HomeLab dashboard |
| immich | Inactive | Photo and video management |
| it-tools | No inactive badge shown | Browser-based technical utilities |
| lmstudioopenwebui | No inactive badge shown | Web interface for local LM Studio models |
| mosquitto | No inactive badge shown | MQTT broker |
| myspeed | No inactive badge shown | Network speed monitoring |
| n8n | No inactive badge shown | Workflow automation |
| nodecast-tv | Inactive | Media service |
| notemark | No inactive badge shown | Notes service |
| ollamaopenwebui | No inactive badge shown | Web interface for local Ollama models |
| onedrive | No inactive badge shown | Cloud file synchronisation |
| opennotebook | Inactive | Notebook and knowledge-management service |
| openproject | Inactive | Project management |
| pihole | No inactive badge shown | DNS-based network filtering |
| piper | No inactive badge shown | Text-to-speech processing |
| prunemate | Inactive | Docker image maintenance |
| pulse | Inactive | Infrastructure monitoring |
| roundcubemailclient | No inactive badge shown | Webmail client |
| searxng | No inactive badge shown | Metasearch engine |
| stellantisoauth | No inactive badge shown | Vehicle-service authentication |
| syncthing | Inactive | Peer-to-peer file synchronisation |
| twingate | No inactive badge shown | Remote network access |
| upsnap | No inactive badge shown | Wake-on-LAN management |
| uptimekuma | No inactive badge shown | Service availability monitoring |
| vaultwarden | Inactive | Password-management server |
| whatsupdocker | No inactive badge shown | Container update monitoring |
| whisper-webui | No inactive badge shown | Web-based speech transcription |
| zigbee2mqtt | No inactive badge shown | Zigbee-to-MQTT bridge |

### Stack screenshots

![Portainer stacks: Automatic1111 through Home Assistant]({{ '/assets/images/digital/homelab/software/portainer-stacks-01.png' | relative_url }})

![Portainer stacks: Homepage through Ollama OpenWebUI]({{ '/assets/images/digital/homelab/software/portainer-stacks-02.png' | relative_url }})

![Second captured view of Homepage through Ollama OpenWebUI]({{ '/assets/images/digital/homelab/software/portainer-stacks-03.png' | relative_url }})

![Portainer stacks: OneDrive through Stellantis OAuth]({{ '/assets/images/digital/homelab/software/portainer-stacks-04.png' | relative_url }})

![Portainer stacks: Syncthing through Zigbee2MQTT]({{ '/assets/images/digital/homelab/software/portainer-stacks-05.png' | relative_url }})

---

[Back to HomeLab]({{ '/digital/homelab/' | relative_url }}) · [Back to Digital]({{ '/digital/' | relative_url }})
