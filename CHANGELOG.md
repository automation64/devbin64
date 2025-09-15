# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [9.0.0]

### Added

- Bash
  - Deployer
- IAC64
  - Driver: bash
  - GitHub actions
- Act
  - dev-test-act: workflow parameter

### Changed

- DevBin64
  - dev-set: **breaking-change** now use vault for secrets, var for local.env
- OpenTofu
  - Include .tf files
- TFSec
  - Output default
- TFLint
  - Output default

## [8.0.0]

### Added

- Module
  - kustomize
- IAC64
  - Added drivers: kustomize, ansible, opentofu
- Ansible
  - CLI installer
  - Deployer
- Kubelinter
  - CLI installer
- Kubescape
  - CLI installer

### Changed

- IAC64
  - Updated prefix definitions
  - Added OpenTofu driver
- OpenTofu
  - Migrated IAC64 code
- Kubelint
  - **breaking-change** Renamed to Kubelinter

### Fixed

- All
  - dev-lib-*: disabled CLI promotion to searchable path

## [7.10.0]

### Added

- Module
  - Act
  - IaC64
- DevBin64
  - dev-set: auto-load profile env files

### Changed

- Bash
  - dev-test-bash: allow default container, add test path prefix if not present
- TestMansh
  - dev-test-testmansh: allow default container, add test path prefix if not present
- DevBin64
  - dev-bootstrap: do not replace existing .gitignore

### Removed

- GitOps
  - Migrated to IaC64

## [7.9.1]

### Added

- Module
  - OpenTofu
  - TFLint
  - TFSec
  - GitOps
- DevBin64
  - dev-set: added public functions, profile normalization
- GIT
  - dev-git-repo-create

### Fixed

- DevBin64
  - doc.env: Removed incompatible default declaration of DEV_PROFILE variable, added missing build variables

## [7.8.0]

### Added

- Module
  - Docker
- DevBin64
  - dev-profile-list

### Changed

- DevBin64
  - dev-bootstrap: create .devbin64-modules if DEV_BOOTSTRAP_MODULES is set
  - dev-profile-create: allow passing the profile as parameter
  - dev-init: removed bl64 dependency

## [7.7.1]

### Fixed

- DevBin64
  - Automation64 detection
- BashLib64
  - Circular dependency with Installer64
- Installer64
  - Circular dependency with Installer64

### Changed

- Installer64
  - Inst64 upgraded
- BashLib64
  - Inst64 upgraded
- Cosign
  - Removed obsolete global

## [7.6.2]

### Changed

- Bash
  - Allow setting externally
    - DEV_TEST_BASH_RUNNER_ENVIRONMENT
    - DEV_TEST_BASH_CONTAINER_ENVIRONMENT
  - Github
    - Set max parallel
- SysDen64
  - SD64 upgraded v6
- Installer64
  - Inst64 upgraded
- BashLib64
  - Inst64 upgraded

## [7.5.0]

### Changed

- DevBin64
  - File update now replaces original if different, no .new left behind

### Added

- GitHub Workflows: CICD flag to show msg in ASCII
  - Bash
  - GitHub
  - GitLeaks
  - Hadolint
  - ShellCheck
  - Testmansh
  - YamlLint

## [7.4.1]

### Added

- DevBin64
  - Detect local automation64 installation (HOME/at64)

## [7.3.0]

### Added

- Bash
  - Test: allow test to require CICD runner environment

### Changed

- DevBin64
  - dev-profile-remove: now requires the profile as parameter
  - dev-bootstrap: removed SysOp64 from base modules

### Fixed
  - dev-profile-create: now checks that the profile name is different than `none`

## [7.2.0]

### Added

- Bash
  - dev-lib-bash: bash installer for MacOS

## [7.1.0]

### Added

- Bash
  - dev-test-bash-host: run test in host
  - dev-test-bash: allow tests to run in the host, instead of in the container: DEV_TEST_BASH_CONTAINER_DISABLED
  - dev-env-bash: default test containers
  - github/test_bash.yaml: multi-os matrix

## [7.0.0]

### Changed

- ArgoCD
  - Upgraded Installer64
- Cosign
  - Upgraded Installer64
- GitLeaks
  - Upgraded Installer64
- Hadoling
  - Upgraded Installer64
- Helm
  - Upgraded Installer64
- Shellcheck
  - Upgraded Installer64
- SysDen64
  - Upgraded Installer64
- SysOp64
  - Upgraded Installer64
- Taskfile
  - Upgraded Installer64
- Trivy
  - Upgraded Installer64

## [6.3.1]

### Fixed

- DevBin64
  - dev-set:
    - reverted: profile as param
    - missing profile var init
- Ansible
  - Upgraded BL64
- MKDocs
  - Upgraded BL64
- SysDen64
  - Upgraded BL64

## [6.2.0]

### Added

- Git
  - dev-git-repo-pull

## [6.1.0]

### Added

- Git
  - dev-git-tag-destroy

### Changed

- GH Actions: Updated dev environment preparation
  - Bash
  - GitHub
  - HadoLint
  - ShellCheck
  - TestManSH
  - YAMLLint
- Git
  - dev-git-tag-create: Refactored to use bl64

## [6.0.0]

### Added

- Modules
  - Trivy
- GitLeaks
  - dev-sast-gitleaks
- Project
  - dev-prep-project

### Changed

- DevBin64
  - dev-lib-base: **breaking-change** no longer auto-calls dev-lib-project
- Project
  - dev-lib-project: **breaking-change** no longer normalizes permissions. Use dev-prep-project instead

## [5.0.0]

### Added

- Modules
  - GitLeaks
  - SysOp64
- DevBin64
  - dev-init: new task, sets development environment and profile
  - dev-profile-remove: new task, removes profile
- Bash
  - dev-test: added project paths inside test container

### Changed

- Installer64
  - dev-env-installer64: set local BL64 location
- DevBin64
  - dev-profile: renamed to dev-profile-create
  - dev-bootstrap: default profile name changed to `none`
  - dev-lib-base: now is used by DevBin64 only. Migrate project specific content to dev-lib-project
- Bash
  - gh-workflow: replace lib-installer for lib-base
- GitHub
  - gh-workflow: replace lib-installer for lib-base
- HadoLint
  - gh-workflow: replace lib-installer for lib-base
- ShellCheck
  - gh-workflow: replace lib-installer for lib-base
- YamlLint
  - gh-workflow: replace lib-installer for lib-base

## [4.3.0]

### Added

- SysDen64
  - dev-lib-sysden64: local installer

## [4.2.1]

### Added

- DevBin64
  - dev-bootstrap: registered gitkeep placeholder
- Bash
  - Test directory structure

### Fixed

- DevBin64
  - dev-set: missing var declaration

## [4.1.1]

### Added

- DevBin64
  - dev-bootstrap: allow promoting optional modules to bin/

### Changed

- DevBin64
  - dev-set: make .local.env optional
- Project
  - Upgrade BL64
- Ansible
  - Upgrade BL64
- Bash
  - Upgrade BL64
- Container
  - Upgrade BL64
- Cosign
  - Upgrade BL64
- Go
  - Upgrade BL64
- Git
  - Upgrade BL64
- GitHub
  - Upgrade BL64
- Hadolint
  - Upgrade BL64
- Kind
  - Upgrade BL64
- Kubelint
  - Upgrade BL64
- SysDen64
  - Upgrade BL64
- TestManSh
  - Upgrade BL64

## [4.0.1]

### Added

- DevBin64
  - Installer for having a local copy of the module library
- GIT
  - dev-git-repo-update: add garbage collector

### Changed

- DevBin64
  - dev-bootstrap: now copy modules from local library instead of GitHub repo
  - env: added build paths (prepare, staging, pack)
- Ansible
  - Migrated to global build paths
- Bash
  - Migrated to global build paths
- MKDocs
  - Migrated to global build paths
- Project
  - Migrated to global build paths

### Fixed

- GitHub
  - dev-release-github: added missing library

## [3.2.0]

### Added

- DevBin64
  - dev-bootstrap: generate deployment status file
- SysDen64
  - module

### Fixed

- DevBin64
  - dev-bootstrap: add dev-profile to distributable package

### Changed

- GitHub
  - dev-release-github: use BL64 to parse CHANGELOG.md

## [3.1.0]

### Added

- Project
  - dev-pack-project: boilerplate for packing distributable release packages
  - dev-build-project: boilerplate for building the app

### Fixed

- GitHub
  - dev-release-github: Fixed changelog parser

## [3.0.0]

### Added

- DevBin64
  - dev-profile: Profile directories creation
  - .local-post: optional local env file loaded as last stage of dev-set
  - .env: added DEV_PATH_PROF_* vars for profile relative paths

### Changed

- DevBin64
  - Renamed DEV_ENVIRONMENT as DEV_PROFILE

### Removed

- DevBin64
  - .local: removed DEV_ENVIRONMENT as now is declared as DEV_PROFILE in .env
  - dev-lib-local: removed as now tasks are done by dev-bootstrap

## [2.1.0]

### Added

- ShellCheck
  - Added linter

## [2.0.2]

### Added

- Helm
  - Installer
- ShellCheck
  - Installer
- DevBin64
  - dev-set: Module's environment load. Modules are defined in `.env/DEV_MODULE_LOAD`

### Fixed

- DevBin64
  - dev-set: added ZSH compatibility

## [1.3.0]

### Added

- ArgoCD
  - CLI and installer
- TaskFile
  - CLI, Installer
- Hadolint
  - CLI, Installer, Linter
- KubeLint
  - Linter
- KubeScape
  - Linter

## [1.2.0]

### Added

- Project
  - dev-env-project: project specific shell environment
  - dev-lab-project: project specific lab environment
- All
  - Github Actions: added concurrency settings

### Changed

- YAMLLint
  - dev-lint-yamllint: lint now uses local if available, if not container
- DevBin64
  - dev-bootstrap: updated default file permissions for .env, .local
- BashLib64
  - dev-lib-bashlib64: remove stand-alone and slim libs

## [1.1.0]

### Added

- DevBin64
  - Added environments support to allow configuration and devtime/runtime data separation

### Changed

- DevBin64
  - dev-bootstrap: now creates already existing files with `.new` prefix instead of skipping

## [1.0.0]

### Added

- DevBin64
  - Added main paths:
    - `etc/`: Project configuration files
    - `logs/`: DevOps logs store. Content excluded from GIT
    - `vault/`: DevOps local vault for secrets. Content excluded from GIT
