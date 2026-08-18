
┌──────────────────────────────────────────────────────────────────────────────────────────────┐
│        Kontext-Overview: Persönliche statische Lab-Webseite                                │
│        Markdown + OpenAI Codex + VS Code + GitHub + Actions + Jekyll + GitHub Pages        │
└──────────────────────────────────────────────────────────────────────────────────────────────┘


┌──────────────────────────────┐
│      LOCAL DEVELOPMENT       │
└──────────────────────────────┘

   ┌───────────────────┐
   │ Autor / Betreiber │
   └─────────┬─────────┘
             │ bearbeitet
             ▼
   ┌───────────────────┐
   │      VS Code      │
   │                   │
   │ Entwicklungs-IDE  │
   └─────────┬─────────┘
             │
             │ Prompt / Aufgaben
             ▼
   ┌───────────────────────────┐
   │      OpenAI Codex         │
   │     Coding Assistant      │
   │                           │
   │ - Code erzeugen           │
   │ - Markdown erstellen      │
   │ - Struktur ändern         │
   │ - Fehler analysieren      │
   │ - Jekyll konfigurieren    │
   └────────────┬──────────────┘
                │
                │ erzeugt / verändert
                ▼

   ┌──────────────────────────────────────┐
   │      Lokales Website-Projekt         │
   │                                      │
   │  content / pages / posts             │
   │      *.md                            │
   │                                      │
   │  _config.yml                         │
   │                                      │
   │  _layouts/                           │
   │  _includes/                          │
   │                                      │
   │  assets/                             │
   │      css/                            │
   │      js/                             │
   │      images/                         │
   └──────────────────┬───────────────────┘
                      │
                      │ git commit + push
                      ▼


┌───────────────────────────────────────────────────────────────┐
│                      GITHUB PLATFORM                          │
└───────────────────────────────────────────────────────────────┘

   ┌────────────────────────────┐
   │     GitHub Repository      │
   │                            │
   │   Versionsverwaltung      │
   │                            │
   │ Markdown                   │
   │ Jekyll-Konfiguration       │
   │ Templates                  │
   │ Assets                     │
   │ Workflow-Dateien           │
   └─────────────┬──────────────┘
                 │
                 │ Push / Merge
                 ▼
   ┌────────────────────────────┐
   │       GitHub Actions       │
   │                            │
   │       CI / CD Pipeline     │
   │                            │
   │ .github/workflows/         │
   │ pages.yml                  │
   └─────────────┬──────────────┘
                 │
                 │ startet Build
                 ▼
   ┌────────────────────────────┐
   │        Jekyll Build        │
   │                            │
   │ Markdown                   │
   │      +                     │
   │ Layouts / Includes         │
   │      +                     │
   │ Config                     │
   │                            │
   │            ↓               │
   │                            │
   │ statisches HTML / CSS / JS │
   └─────────────┬──────────────┘
                 │
                 │ Build-Artefakt
                 ▼
   ┌────────────────────────────┐
   │       GitHub Pages         │
   │                            │
   │          Hosting           │
   │                            │
   │ Veröffentlichung der       │
   │ statischen Webseite        │
   └─────────────┬──────────────┘
                 │
                 │ HTTPS
                 ▼


┌──────────────────────────────┐
│         PUBLIC WEB           │
└──────────────────────────────┘

   ┌────────────────────────────┐
   │   Öffentliche Lab-Webseite │
   │                            │
   │ username.github.io         │
   │ oder                       │
   │ eigene Domain              │
   └─────────────┬──────────────┘
                 │
                 │ Seitenaufruf
                 ▼
   ┌────────────────────────────┐
   │     Browser / Besucher     │
   │                            │
   │ liest HTML / CSS / JS      │
   │                            │
   │ keine serverseitige        │
   │ Anwendung notwendig        │
   └────────────────────────────┘