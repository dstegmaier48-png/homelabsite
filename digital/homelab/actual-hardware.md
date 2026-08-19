---
layout: page
title: Actual Hardware
description: Current HomeLab hardware for virtualisation, AI workloads, storage and backup.
permalink: /digital/homelab/actual-hardware/
---

# Actual Hardware

The following diagram documents the current HomeLab hardware setup. The text shown in the image has also been transcribed below to make the information searchable and accessible.

For the development that led to this setup, see [HW Journey]({{ '/digital/homelab/actual-hardware/hw-journey/' | relative_url }}).

![HomeLab hardware overview showing the hypervisor, AI host, NAS and external backup]({{ '/assets/images/digital/homelab/lab-hardware-v1.png' | relative_url }})

*Diagram: “4Rot3x – HW HomeLab”, version 1.1, August 2026, D. Stegmaier.*

## Hardware overview

| System | Hardware | Operating system | Purpose |
|---|---|---|---|
| Hypervisor | Intel Core 5 125H; 32 GB DDR5 | Proxmox 9.2 | Hypervisor |
| AI host | AMD Ryzen 5 8400F; 32 GB DDR5; Radeon RX 9060 XT | Windows 11; LM Studio | Flexible AI host |
| NAS | UGREEN DXP2800; 8 GB DDR5 RAM; 2 × 8 TB in RAID 1 | Not specified | NAS |
| On-site backup | WD external 8 TB drive | Not specified | Weekly on-site backup |

## Hypervisor

### Hardware

- Intel Core 5 125H
- 32 GB DDR5 memory

### Software

- Proxmox 9.2

### Purpose

- Hypervisor

## AI host

### Hardware

- AMD Ryzen 5 8400F
- 32 GB DDR5 memory
- AMD Radeon RX 9060 XT

### Software

- Windows 11
- LM Studio

### Purpose

- Flexible AI host

## Network-attached storage

### Hardware

- UGREEN DXP2800
- 8 GB DDR5 memory
- 2 × 8 TB in RAID 1

### Purpose

- Network-attached storage (NAS)

## On-site backup

### Hardware

- WD external 8 TB drive

### Purpose

- Weekly on-site backup

---

[Back to HomeLab]({{ '/digital/homelab/' | relative_url }}) · [Back to Digital]({{ '/digital/' | relative_url }})
