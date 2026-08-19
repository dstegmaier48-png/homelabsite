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
| Agentic AI | ZeroClaw and Hermes Agent | Autonomous AI agents for task execution, orchestration and tool-assisted workflows |
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
| Memory | 25.46 GiB of 30.83 GiB used |
| Root disk | 17.84 GiB of 93.93 GiB used |
| Kernel | Linux 7.0.2-6-pve |

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

The screenshots show the following unique stacks and their main functions.

| Stack | Function |
|---|---|
| automatic111stablediffusion | Stable Diffusion image generation |
| crafty | Crafty game-server management |
| dockhand | Docker management |
| dozzle | Container log viewer |
| duplicati | Backup management |
| excalidraw | Collaborative diagrams |
| faster-whisper | Speech-to-text processing |
| filebrowser | Browser-based file management |
| frigate | Network video recording and detection |
| homeassistant | Home automation |
| homepage | HomeLab dashboard |
| immich | Photo and video management |
| it-tools | Browser-based technical utilities |
| lmstudioopenwebui | Web interface for local LM Studio models |
| mosquitto | MQTT broker |
| myspeed | Network speed monitoring |
| n8n | Workflow automation |
| nodecast-tv | Media service |
| notemark | Notes service |
| ollamaopenwebui | Web interface for local Ollama models |
| onedrive | Cloud file synchronisation |
| opennotebook | Notebook and knowledge-management service |
| openproject | Project management |
| pihole | DNS-based network filtering |
| piper | Text-to-speech processing |
| prunemate | Docker image maintenance |
| pulse | Infrastructure monitoring |
| roundcubemailclient | Webmail client |
| searxng | Metasearch engine |
| stellantisoauth | Vehicle-service authentication |
| syncthing | Peer-to-peer file synchronisation |
| twingate | Remote network access |
| upsnap | Wake-on-LAN management |
| uptimekuma | Service availability monitoring |
| vaultwarden | Password-management server |
| whatsupdocker | Container update monitoring |
| whisper-webui | Web-based speech transcription |
| zigbee2mqtt | Zigbee-to-MQTT bridge |

---

[Back to HomeLab]({{ '/digital/homelab/' | relative_url }}) · [Back to Digital]({{ '/digital/' | relative_url }})
