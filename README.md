# n14395 Homebrew tap

Homebrew Casks for the macOS apps published at [github.com/n14395](https://github.com/n14395).

## Installing

```sh
brew tap n14395/tap
brew install --cask speedy-fan
```

Later versions arrive through `brew upgrade`. Remove an app with
`brew uninstall --cask speedy-fan`; add `--zap` to also delete its preferences
and support files.

## Apps

| Cask | Installs | What it is | Needs |
| --- | --- | --- | --- |
| `clipboard-menu` | ClipboardMenu.app | Menu bar clipboard history and snippets manager | macOS 14.6 |
| `folder-rules` | FolderRules.app | Rule-based folder automation: rename, move, tag, OCR and convert files | macOS 14 |
| `little-kanban` | LittleKanban.app | Multi-board Kanban with a single global inbox | macOS 26 |
| `local-music-gen` | LocalMusicGen.app | Run open music-AI models locally to generate, separate, transcribe and restyle | macOS 14 |
| `more-corners` | MoreCorners.app | Hot corners with per-modifier overrides and dozens of extra actions | macOS 13 |
| `re-bar` | ReBar.app | Menu bar spacing, colour themes and item ordering | macOS 15 |
| `re-title` | ReTitle.app | Batch file renaming with rule-based transformations and live preview | macOS 14.6 |
| `speedy-fan` | SpeedyFan.app | Fan monitor and controller for Apple Silicon Macs, from the menu bar | macOS 13 |
| `speedy-launcher` | SpeedyLauncher.app | Menu bar launcher for apps, folders, Shortcuts and categories | macOS 14 |
| `speedy-spaces` | SpeedySpaces.app | Names, icons and hotkeys for Spaces virtual desktops | macOS 14 |
| `speedy-torrent` | SpeedyTorrent.app | Native BitTorrent client with a from-scratch Swift protocol engine | macOS 15 |
| `window-shift` | WindowShift.app | Move and resize windows by dragging anywhere inside them | macOS 13 |

All builds are Apple Silicon only except `clipboard-menu` and `little-kanban`,
which are universal. Every app is Developer ID signed and notarized, so no
Gatekeeper workarounds are needed. Homebrew's `depends_on macos:` only knows
major versions, so the two 14.6 minimums are declared as macOS 14.

## Maintaining

Every Cask is generated from the app's GitHub release by `bin/update-cask`.
The cask token is the repository name. Normally nothing here is run by hand:
each app's `./build.sh --publish vN.N` calls
`bin/update-cask <repo> vN.N --push` once the GitHub release exists, which
rewrites the Cask, commits it and pushes this repository. The build scripts
find the tap at `~/build/homebrew-tap`, or wherever `HOMEBREW_TAP_DIR` points,
and refuse to publish, before tagging anything, if it is missing or is not a
git clone with an `origin`.

By hand, for a Cask that needs regenerating outside a release:

```sh
bin/update-cask speedy-fan               # regenerate from the latest release
bin/update-cask speedy-fan v0.4          # …or from a specific release
bin/update-cask speedy-fan --push        # …and commit and push the result
bin/update-cask new-app --desc "…"       # first Cask for a newly released app
```

The script downloads the release's `.dmg`, records its SHA-256, mounts it and
reads the `.app` inside: bundle identifier, minimum macOS version, CPU
architectures, sandbox entitlements, app extensions and whether Sparkle is
embedded. From those it writes the whole Cask, including `depends_on`,
`uninstall quit:` and the `zap` list. The one hand-written field is `desc`:
`--desc` if given, else the existing Cask's, else the repository's description
on GitHub (`gh repo edit <repo> -d "…"`). That last fallback is how a
brand-new app gets its first Cask from `build.sh` with no manual step; the
build script checks for it before tagging. Homebrew wants the text under 80
characters, with no app name, leading article, platform word or trailing full
stop. The script needs `gh` logged in to the n14395 account.

The release layout it expects is the one every `build.sh --publish vN.N`
produces: tag `vN.N`, one asset named `AppName-N.N.dmg`, an `AppName.app` at
the top level of the image.

To check a Cask by hand:

```sh
brew style --cask n14395/tap
brew audit --cask --strict n14395/tap/speedy-fan
```

Both need the tap to be tapped locally (`brew tap n14395/tap`), which clones
this repository into Homebrew's tap directory.

## Visibility

Homebrew downloads Cask assets with plain, unauthenticated `curl`. GitHub only
serves release assets of **public** repositories that way; on a private
repository the download URL answers 404 and `brew install` fails. For a Cask
here to be installable, its app repository must be public. The same applies to
this repository for anyone other than its owner, since `brew tap` clones it.
