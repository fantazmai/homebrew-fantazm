# homebrew-fathom

[Homebrew](https://brew.sh) tap for [Fathom](https://github.com/darklake-ai/fathom).

## Install

```sh
brew install darklake-ai/fathom/fathom
```

That's it — Homebrew auto-taps + installs. Updates come down with
your normal `brew upgrade`.

If you prefer the explicit two-step:

```sh
brew tap darklake-ai/fathom
brew install fathom
```

## How updates land

This tap is updated by [goreleaser](https://goreleaser.com) on every
Fathom release. Don't edit `Formula/fathom.rb` by hand — the next
release will overwrite your changes. The source for the formula is
the `brews:` block in [darklake-ai/fathom/.goreleaser.yml](https://github.com/darklake-ai/fathom/blob/main/.goreleaser.yml).

## Supported platforms

- macOS (arm64 + x86_64)
- Linux (arm64 + x86_64)
- Windows: install via `curl … | sh` or download the `.zip` from
  [releases](https://github.com/darklake-ai/fathom/releases) — Homebrew
  doesn't support Windows.

## Questions

- Install issue → [darklake-ai/fathom/issues](https://github.com/darklake-ai/fathom/issues)
- Security report → security@darklake.ai
