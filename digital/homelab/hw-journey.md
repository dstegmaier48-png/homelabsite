---
layout: page
title: HW Journey
description: HomeLab hardware milestones from Raspberry Pi systems and Proxmox mini PCs to a dedicated local-AI host.
permalink: /digitals/homelab/actual-hardware/hw-journey/
---

# HW Journey

This page highlights the major steps in my HomeLab hardware journey over the last six years. Since 2020, the lab has evolved from small single-board computers into a flexible environment for virtualisation, home automation, self-hosted services, and local AI.

## First milestone — Raspberry Pi

The early HomeLab years were shaped by Raspberry Pi systems. A notable milestone was the use of **two Raspberry Pi 5 systems**, primarily for **Home Assistant**. They provided a compact and energy-efficient platform for home automation and self-hosting experiments.

## Moving to Proxmox and LXC

As the number of services increased, the focus shifted to **Proxmox**. Over time, I installed it on dozens of different mini PCs and used **Linux Containers (LXC)** to separate services while keeping resource consumption low.

This phase was strongly experimental: different compact systems were tested for performance, thermals, expandability, and suitability for continuous operation.

## Increasing focus on local LLMs

The next major step was running large language models locally. I experimented with **Ollama**, **llama.cpp**, and **LM Studio**, learning how model size, quantisation, system memory, and accelerator support affect practical inference performance.

Mini PCs remained attractive because of their low footprint and efficiency, but increasingly demanding models exposed their performance and memory-bandwidth limits.

## Ryzen AI HX 370

To explore newer integrated AI hardware, the journey continued with a system based on the **AMD Ryzen AI HX 370**. It represented an important intermediate step between general-purpose mini PCs and a machine designed around a dedicated graphics card.

## 2026 — A dedicated AI host

After reaching the limits of the previous systems, I introduced a dedicated AI host in 2026. It runs **LM Studio**, allowing models to be loaded and tested locally in an isolated and flexible environment.

The first graphics card used for this purpose was an **NVIDIA GeForce RTX 3050 with 6 GB of VRAM**. It was later replaced by an **AMD Radeon RX 9060 XT with 16 GB of VRAM**, providing considerably more memory for local models.

The host is used mainly with **Hermes Agent**. This followed earlier experiments with **ZeroClaw**, which proved too inflexible for the way I wanted to combine local models, tools, and isolated workloads.

## Current direction

The journey reflects a gradual change in priorities:

1. reliable and efficient home automation;
2. flexible virtualisation with Proxmox and LXC;
3. experimentation with local language models;
4. evaluation of integrated AI hardware; and
5. a dedicated GPU host for larger, isolated local-AI workloads.

The current setup is not an endpoint. It is a platform for continuing experiments with models, agents, orchestration, and efficient local inference.

## Hardware gallery

<div class="hw-journey-gallery">
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/raspberry-pi-setup.png' | relative_url }}" alt="Early Raspberry Pi setup with external storage and power supply">
    <figcaption>Early Raspberry Pi setup</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/eq-mini-pc.jpg' | relative_url }}" alt="Compact EQ mini PC and its packaging">
    <figcaption>EQ mini PC</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/minisforum-mini-pc.jpg' | relative_url }}" alt="A compact Minisforum mini PC">
    <figcaption>Minisforum mini PC</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/minisforum-um870-slim.jpg' | relative_url }}" alt="Minisforum UM870 Slim packaging">
    <figcaption>Minisforum UM870 Slim</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/compact-pc.png' | relative_url }}" alt="Compact PC from an earlier HomeLab generation">
    <figcaption>Earlier compact PC</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/ryzen-mini-pc.jpg' | relative_url }}" alt="Ryzen-based mini PC used for local AI experiments">
    <figcaption>Ryzen mini PC</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/minisforum-ms-a2.jpg' | relative_url }}" alt="Minisforum MS-A2 mini workstation">
    <figcaption>Minisforum MS-A2</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/desktop-tower.jpg' | relative_url }}" alt="Desktop tower used as a dedicated AI host">
    <figcaption>Dedicated AI host</figcaption>
  </figure>
  <figure>
    <img src="{{ '/assets/images/digital/homelab/hw-journey/ai-desktop-internal.png' | relative_url }}" alt="Inside an earlier GPU-equipped AI desktop">
    <figcaption>Earlier GPU system</figcaption>
  </figure>
</div>

[Back to Actual Hardware]({{ '/digitals/homelab/actual-hardware/' | relative_url }}) · [Back to HomeLab]({{ '/digitals/homelab/' | relative_url }})
