---
layout: page
title: Hermes Agent
description: A completely local personal AI agent for automations, communication, smart-home control and everyday organization.
permalink: /digitals/hermes-agent/
---

# Hermes Agent

![A local Hermes AI agent connecting a home-lab server with messaging, voice, smart-home controls, scheduled tasks and weather information]({{ '/assets/images/digital/hermes-agent/local-hermes-agent.png' | relative_url }})

## Before Hermes

Before switching to Hermes, I evaluated **ZeroClaw** as the foundation for my local personal agent. Its limitations became noticeable in practical use and sometimes actively obstructed the workflows I wanted to build. Hermes provides a much more flexible basis for combining conversations, tools, persistent context and recurring automations.

I deliberately did not evaluate **OpenClaw**. It has already been covered extensively by many other users, and for this personal experiment it no longer carried the same open-source appeal that I was looking for.

Hermes is my completely local personal AI agent. It runs in my own environment and combines a conversational interface with tools, scheduled jobs and access to selected local services. Telegram and voice messages make the agent available from almost anywhere, while data and automation remain under my control.

## What I use it for

My main use cases are practical workflows that benefit from a persistent assistant:

- **Reminders and recurring jobs:** creating, changing and monitoring one-time or scheduled tasks
- **Home renovation:** maintaining task and shopping lists and reporting the remaining work
- **Daily briefings:** preparing structured weather, news and market summaries with source links
- **Smart home:** reading sensors and controlling selected devices through Home Assistant
- **Home lab operations:** checking Docker services, local systems, models and network connectivity
- **Communication:** managing Telegram recipients and preparing controlled email workflows
- **Voice interaction:** turning spoken requests into actions and providing German audio responses
- **Content creation:** drafting short texts, diagrams, images and summaries

## Model use and evaluation

I am evaluating **Gemma 4 26B A4B QAT** as a model for Hermes in real everyday workflows rather than through isolated benchmark prompts. The evaluation covers German conversation, following multi-step instructions, using tools, maintaining local context and reliably completing scheduled or repeated tasks.

The model is capable of handling a broad mix of organization, research and home-lab operations within the agent. At the same time, practical use has exposed the aspects that matter beyond answer quality: response latency, occasional provider timeouts, accurate interpretation of voice transcripts and dependable recovery when a tool or scheduled job fails. These observations help me tune the model configuration and decide which tasks should run automatically and which should retain explicit confirmation.

## Why local matters

The project is also an experiment in digital sovereignty. I decide which models, services, users and devices Hermes may access. External actions can require confirmation, local files provide persistent context, and recurring jobs turn individual conversations into reliable workflows.

The result is less a conventional chatbot and more a private interface to my digital environment: one place to ask, organize, automate and operate.

---

[Back to Digitals]({{ '/digitals/' | relative_url }}) · [Back to the home page]({{ '/' | relative_url }})
