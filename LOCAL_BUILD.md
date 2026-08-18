# Local Jekyll build

This guide explains how to build and preview DaSte-Labs locally on Windows.

## Requirements

The Jekyll extension for Visual Studio Code does not install the Jekyll runtime. The following components are required:

- Ruby with Devkit
- RubyGems
- Jekyll
- Bundler
- The Minima theme

## 1. Install Ruby

Download and install a **Ruby+Devkit** version from [RubyInstaller for Windows](https://rubyinstaller.org/).

Use the default installation options. At the end of the installation, run `ridk install` and install the MSYS2/MINGW development toolchain.

Close and reopen Visual Studio Code or PowerShell after the installation so that the updated `PATH` is available.

## 2. Verify Ruby

Open a new PowerShell terminal and run:

```powershell
ruby -v
gem -v
```

Both commands should display a version number.

## 3. Install Jekyll and its dependencies

```powershell
gem install jekyll bundler minima webrick
```

Verify the installation:

```powershell
jekyll -v
bundle -v
```

## 4. Open the repository

```powershell
cd C:\Users\admin1\Documents\ChatGPT\labsite
```

## 5. Start the local preview

```powershell
jekyll serve --livereload --baseurl ""
```

Open the following address in a browser:

<http://localhost:4000/>

The `--livereload` option refreshes the browser after content or style changes. The `--baseurl ""` option overrides the production `/labsite` path so that the website is served directly from the local root URL.

Stop the server with `Ctrl+C`.

## 6. Build without starting a server

```powershell
jekyll build
```

The generated static website is written to the `_site` directory.

To create a production-style build using the configured GitHub Pages base URL:

```powershell
jekyll build --baseurl "/labsite"
```

## Troubleshooting

### `jekyll` is not recognised

Close and reopen the terminal. If the problem remains, verify that the Ruby `bin` directory is included in the Windows `PATH` environment variable.

### Missing `webrick`

```powershell
gem install webrick
```

Then start the server again.

### Missing Minima theme

```powershell
gem install minima
```

### Character-encoding errors

Switch the current Windows terminal to UTF-8 before starting Jekyll:

```powershell
chcp 65001
jekyll serve --livereload --baseurl ""
```

### Port 4000 is already in use

Start Jekyll on another port:

```powershell
jekyll serve --livereload --baseurl "" --port 4001
```

Then open <http://localhost:4001/>.

## Publishing

The local `_site` directory must not be committed. GitHub Actions builds and deploys the website automatically after changes are pushed to the `main` branch.
