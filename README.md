# homebrew-spx

Homebrew tap for the [spx](https://github.com/ab-10/spx) CLI.

## Install

```bash
brew install ab-10/spx/spx
```

Or tap first and then install:

```bash
brew tap ab-10/spx
brew install spx
```

## Upgrade

```bash
brew update
brew upgrade spx
```

## Supported platforms

- macOS on Apple Silicon (`aarch64-apple-darwin`)
- macOS on Intel (`x86_64-apple-darwin`)

Linux is not yet packaged; build from source via the [spx repo](https://github.com/ab-10/spx) in the meantime.

## How releases land here

The formula is updated automatically by the `release.yml` workflow in `ab-10/spx` when a `v*` tag is pushed. Do not edit `Formula/spx.rb` by hand — changes will be overwritten on the next release.
