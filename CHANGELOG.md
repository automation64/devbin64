# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [14.4.0]

### Added

- Ansible
  - Shared inventory support

### Changed

- BashLib64
  - Upgraded BashLib64 to 23.1.1

### Fixed

- DevBin64
  - dev-profile-set: namespace
- IAC64
  - dev-iac64: profile setting

## [14.3.0]

### Added

- GIT
  - Close release and feature branches

### Changed

- BashLib64
  - Upgraded BashLib64 to 23.1.0
- IAC64, Kustomize, Helm **breaking-change**
  - Upgraded BashLib64 dependency to 23.1.0
- OpenTofu **breaking-change**
  - Upgraded BashLib64 dependency to 23.0.2
- GIT
  - Ensure task is executed from root repo

### Fixed

- DevBin64
  - dev-set: fail if unable to load env file
  - dev-bootstrap: do not remove dot.local.env and dot.secrent.env if present
- IAC64
  - dev-build-iac64-opentofu: force cleanup of shared module
- Act
  - Docker in docker socker access

## [14.2.0]

### Added

- All
  - GitHub Actions: added permissions

## [14.1.0]

### Changed

- OpenTofu **breaking-change**
  - Moved plan file to staging directory
  - Deploy and Remove now use separate plan files
  - Normalized module parameter names
- IAC64
  - Upgraded OpenTofu provider

## [14.0.0]

### Added

- Modules
  - Prettier
  - ShFmt
- Nodejs:
  - dev runner, cli, prep
- Docker
  - Added docker auth (migrated from Container module)
- DevBin64
  - Added pack setup
  - Added dot.gitignore template

### Changed

- Upgraded modules
  - Docker
  - Ansible
  - Go
- DevBin64 **breaking-change**
  - Moved pack setup out of build setup
  - Removed dot file template creation from bootstrap
- SemGrp
  - Added default target
- SysDen64 **breaking-change**
  - Lab container now uses system-level configuration

### Deprecated

- Container **breaking-change**
  - Migrated to Docker module

## [13.0.0]

### Added

- Modules
  - NodeJS
  - Semgrep
  - Nuclei
- Act
  - Artifact support

### Fixed

- Ansible, YAMLLint: target typo

### Changed

- All
  - Removed bashlib64 dependency from dev-env-\*
- DevBin64
  - **breaking-change** Renamed `dev-init` -> `dev-profile-set`

### Deprecated

- DevBin64
  - **breaking-change** Removed `DEV_MODULE_LOAD` support
- TaskFile
  - **breaking-change** module removed
- SysOp64
  - **breaking-change** module removed

## [12.3.1]

### Added

- DevBin64
  - Set verbosity level: DEV_VERBOSE_LEVEL

### Changed

- GitHub
  - dev-release-github: check artifact if provided
- DevBin64
  - dev-lib-base: upgraded installer64 dependency
  - dev_bin64_log_setup: option for resetting module logs
- Installer64
  - dev-env-installer64: Installer64 upgraded to 8.0.0
- BashLib64
  - dev-env-bashlib64: BashLib64 upgraded to 22.12.0

### Changed

- Bash
  - test_bash.yaml: script name

## [12.2.0]

### Added

- All
  - gh-actions: cache module tools

### Changed

- GIT
  - tag, repo tasks: upgraded
- YAMLLint
  - upgraded

### Fixed

- GIT
  - repo task: typo

### Deprecated

- GIT
  - repo: obsolete tasks
- Bash
  - repo: obsolete tasks

## [12.1.0]

### Added

- DevBin64
  - Shared task initializer
- TFSec
  - Save report
- ShellCheck
  - Save report

### Changed

- GitLeaks
  - Upgraded remote GH action
- ShellCheck
  - Removed container mode

## [12.0.2]

### Added

- Modules
  - GoLangCI
  - GoSec
- GitLeaks
  - Reusable GitHub Actions workflow
  - Save report to sarif file
- DevBin64
  - dev-env: dev-time area management functions
- Go
  - dev-prep-go: initialize go mod
  - dev-build-go: build go app
  - dev-pack-go: prepare go app for release
- Act
  - Local cache

### Changed

- All
  - **breaking-change**: requires BashLib64 version 22.10.0.
- DevBin64
  - dev-set: promoted based env vars to dev-env
- KubeScape
  - Renamed lint to sast
- Bash
  - **breaking-change**: build default destination is now namespaced

## [11.2.0]

### Added

- IAC64
  - Global configuration feature
- DevBin64
  - dev-set: set CICD verbose format when running inside CICD pipeline
- Ansible
  - Test

## [11.1.1]

### Added

- IAC64
  - Per module dotenv support

## [11.0.0]

### Added

- Multiple
  - .github: GitHub actions cache
    - Target modules: HadoLint, OpenTofu, ShellCheck, TestManSH, TFLint, TFSec, YAMLLint
- Modules
  - KubeCtl
  - PklLang
- IAC64
  - Command: init
  - Kustomize: test, lint, remove
  - Bash: remove
  - Helm: deploy, remove

### Changed

- Multiple
  - dev-lib-\*: skip install if already installed
    - Target modules: ShellCheck, KubeLinter, KubeScape
- DevBin64
  - dev-bootstrap: now preserves previous template if customized
- IAC64
  - Normalized log file names

### Fixed

- DevBin64
  - dev-set: github local env file name
- TFSec, TFLint
  - GH workflow: missing tofu installer
- OpenTofu
  - Staging cleanup

## [10.2.0]

### Added

- Multiple
  - .github: GitHub actions cache
    - Target modules: Bash, GitHub, GitLeaks

## [10.1.3]

### Added

- IAC64
  - Shared module support, console command

### Changed

- Multiple
  - dev-lib-\*: skip install if already installed
    - Target modules: Installer64, BashLib64, DevBin64, OpenTofu, TFsec, TFlint, Act, GitLeaks
- DevBin64
  - dev-set: DEV_VERBOSE: now sets the verbose format (bl64). The value propagates to all devbin64 scripts
- OpenTofu
  - merged test and plan tasks

## [10.0.2]

### Added

- GIT
  - dev-release-git
  - dev-git-branch-delete
- Bash
  - dev-lab-bash: test env flag
  - dev-test-bash: cool down between tests
- OpenTofu
  - gitignore
  - dev-lint-opentofu
- TFLint
  - GitHub: added built step
- TFSec
  - GitHub: added built step
  - Config file
- Act
  - Max concurrent jobs

### Changed

- DevBin64
  - **breaking-change** `.env` is now deprecated. A new format is now available as `.dev.env`
  - dev-set: Repository check now looks for bootstrap watermark. Secrets now loaded from vault/
- GitLeaks
  - Increase verbosity

### Removed

- DevBin64
  - dev-bootstrap: Creation of optional `.local.env` and `.secrets.env`
