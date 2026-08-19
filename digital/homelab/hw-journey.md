---
layout: page
title: HW Journey
description: HomeLab hardware milestones from Raspberry Pi systems and Proxmox mini PCs to a dedicated local-AI host.
permalink: /digital/homelab/actual-hardware/hw-journey/
---

# HW Journey

This page highlights the major steps in my HomeLab hardware journey over the last six years. Since 2020, the lab has evolved from small single-board computers into a flexible environment for virtualisation, home automation, self-hosted services, and local AI.

## First milestone — Raspberry Pi

The early HomeLab years were shaped by Raspberry Pi systems. A notable milestone was the use of **two Raspberry Pi 5 systems**, primarily for **Home Assistant**. They provided a compact and energy-efficient platform for home automation and self-hosting experiments.

![Early Raspberry Pi setup with external storage and power supply]({{ '/assets/images/digital/homelab/hw-journey/raspberry-pi-setup.png' | relative_url }})

## Moving to Proxmox and LXC

As the number of services increased, the focus shifted to **Proxmox**. Over time, I installed it on dozens of different mini PCs and used **Linux Containers (LXC)** to separate services while keeping resource consumption low.

This phase was strongly experimental: different compact systems were tested for performance, thermals, expandability, and suitability for continuous operation.

![Compact EQ mini PC and its packaging]({{ '/assets/images/digital/homelab/hw-journey/eq-mini-pc.jpg' | relative_url }})

![A compact Minisforum mini PC used during the virtualisation journey]({{ '/assets/images/digital/homelab/hw-journey/minisforum-mini-pc.jpg' | relative_url }})

![Minisforum UM870 Slim packaging]({{ '/assets/images/digital/homelab/hw-journey/minisforum-um870-slim.jpg' | relative_url }})

![Compact PC from an earlier HomeLab generation]({{ '/assets/images/digital/homelab/hw-journey/compact-pc.png' | relative_url }})

## Increasing focus on local LLMs

The next major step was running large language models locally. I experimented with **Ollama**, **llama.cpp**, and **LM Studio**, learning how model size, quantisation, system memory, and accelerator support affect practical inference performance.

Mini PCs remained attractive because of their low footprint and efficiency, but increasingly demanding models exposed their performance and memory-bandwidth limits.

![Ryzen-based mini PC used during local-AI experiments]({{ '/assets/images/digital/homelab/hw-journey/ryzen-mini-pc.jpg' | relative_url }})

## Ryzen AI HX 370

To explore newer integrated AI hardware, the journey continued with a system based on the **AMD Ryzen AI HX 370**. It represented an important intermediate step between general-purpose mini PCs and a machine designed around a dedicated graphics card.

![Minisforum MS-A2 mini workstation]({{ '/assets/images/digital/homelab/hw-journey/minisforum-ms-a2.jpg' | relative_url }})

## 2026 — A dedicated AI host

After reaching the limits of the previous systems, I introduced a dedicated AI host in 2026. It runs **LM Studio**, allowing models to be loaded and tested locally in an isolated and flexible environment.

The first graphics card used for this purpose was an **NVIDIA GeForce RTX 3050 with 6 GB of VRAM**. It was later replaced by an **AMD Radeon RX 9060 XT with 16 GB of VRAM**, providing considerably more memory for local models.

The host is used mainly with **Hermes Agent**. This followed earlier experiments with **ZeroClaw**, which proved too inflexible for the way I wanted to combine local models, tools, and isolated workloads.

![Desktop tower used as a dedicated AI host]({{ '/assets/images/digital/homelab/hw-journey/desktop-tower.jpg' | relative_url }})

![Inside an earlier GPU-equipped AI desktop]({{ '/assets/images/digital/homelab/hw-journey/ai-desktop-internal.png' | relative_url }})

## Current direction

The journey reflects a gradual change in priorities:

1. reliable and efficient home automation;
2. flexible virtualisation with Proxmox and LXC;
3. experimentation with local language models;
4. evaluation of integrated AI hardware; and
5. a dedicated GPU host for larger, isolated local-AI workloads.

The current setup is not an endpoint. It is a platform for continuing experiments with models, agents, orchestration, and efficient local inference.

[Back to Actual Hardware]({{ '/digital/homelab/actual-hardware/' | relative_url }}) · [Back to HomeLab]({{ '/digital/homelab/' | relative_url }})
