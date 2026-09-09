# LoomX packages

Official Homebrew and Scoop packages for [Steward](https://github.com/loomx-ai/steward).

## Homebrew — macOS and Linux

```sh
brew install loomx-ai/tap/steward
steward server start
```

Upgrade with `brew update && brew upgrade steward`.

## Scoop — Windows

```powershell
scoop bucket add loomx-ai https://github.com/loomx-ai/homebrew-tap
scoop install loomx-ai/steward
steward server start
```

Upgrade with `scoop update steward`.

Open <http://127.0.0.1:8585>. Start Steward from the same working directory each
time and back up its `.steward` directory before upgrading.

The `Sync packages` workflow checks the latest stable GitHub Release every 15
minutes and verifies the release checksums before updating the manifests.
Maintainers can also run the workflow manually after a release. GitHub schedules
may be delayed. No cross-repository credentials are required.

[Installation and deployment documentation](https://loomx.ai/steward/docs/installation)
