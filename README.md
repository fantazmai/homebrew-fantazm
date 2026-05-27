# homebrew-fantazm

[Homebrew](https://brew.sh) tap for [Fantazm](https://github.com/fantazmai/fantazm).

## Install

```sh
brew install fantazmai/fantazm/fantazm
```

That's it — Homebrew auto-taps + installs. Updates come down with
your normal `brew upgrade`.

If you prefer the explicit two-step:

```sh
brew tap fantazmai/fantazm
brew install fantazm
```

## How updates land

This tap is updated by [goreleaser](https://goreleaser.com) on every
Fantazm release. Don't edit `Formula/fantazm.rb` by hand — the next
release will overwrite your changes. The source for the formula is
the `brews:` block in [fantazmai/fantazm/.goreleaser.yml](https://github.com/fantazmai/fantazm/blob/main/.goreleaser.yml).

## Supported platforms

- macOS (arm64 + x86_64)
- Linux (arm64 + x86_64)
- Windows: install via `curl … | sh` or download the `.zip` from
  [releases](https://github.com/fantazmai/fantazm/releases) — Homebrew
  doesn't support Windows.

## Questions

- Install issue → [fantazmai/fantazm/issues](https://github.com/fantazmai/fantazm/issues)
- Security report → security@fantazm.ai
