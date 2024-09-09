# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [5.1.0]

### Added

- Modules
  - Trivy

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

## [0.8.0]

### Added

- DevBin64
  - dev-bootstrap: added local files generation and base tools instalation
- Hadolint
  - github: added lint action

## [0.7.0]

### Add

- Go
  - Added new component with lab and test

### Changed

- Container
  - Migrated globals to dev-env
- Cosign
  - Migrated globals to dev-env
- Hadolint
  - Migrated globals to dev-env
- Bash
  - Normalized var names
- Kind
  - Registered kind path

### Fixed

- GitHub
  - dev-release-github: added missing bl64 module
- Kind
  - dev-lab-kind: fixed missing status capture for docker run

## [0.6.0]

### Added

- GitHub
  - local-github: added cicd settings file

### Changed

- GitHub
  - dev-release-github: artifact is now a list

### Fixed

- DevBin64
  - dev-bootstrap: Fixed gitkeep location
- TestmanSH
  - dev-test-bash: Added missing exit contidion
  - github-workflow: Added screen shell to avoid missing TTY error

## [0.5.0]

### Added

- Kind
  - dev-lab-kind: added script
- TestManSH
  - added to VSCode / Tasks
- YAMLLint
  - added to VSCode / Tasks

### Changed

- DevBin64
  - dev-bootstrap: upgraded to use latest Installer64 version
- GIT
  - dev-git-repo-update: added flag to enable upstream
  - dev-git-tag-create: added flag to enable upstream

### Fixed

- Bash
  - Normalized var names

## [0.4.0]

### Added

- Ansible
  - dev-pack-ansible-collectin: added script
  - dev-env-ansible: added script
  - dev-lab-ansible: added script
- MkDocs
  - dev-lint-mkdocs: added linter
  - dev-env-mkdocs: added script
- Ansible-Lint
  - dev-lint-ansiblelint-collections: added script
  - dev-env-ansiblelint: added script
- DevBin64
  - added to VSCode / Tasks
  - dev-lib-base
    - added installation of base tools: Installer64
- TestManSH
  - dev-env-testmansh: added shared vars
- Bash
  - dev-env-bash: added shared vars
  - dev-lab-bash: added script
  - dev-test-bash: added script
- YAMLLint
  - dev-env-yamllint: added shared vars
- GIT
  - added to VSCode / Tasks

### Changed

- Bash
  - dev-build-bash: migrated global vars to dev-env-bash
- Container
  - dev-lab-container: migrated global vars to dev-env-container
- TestManSH
  - dev-lint-testmansh: migrated global vars to dev-env-testmansh
  - dev-test-testmansh: added container and test cases as parameters
  - test_testmansh.yaml: removed obsolete script call
- YAMLLint
  - dev-lint-yamllint: migrated global vars to dev-env-yamllint
  - dev-lint-yaml: renamed to dev-lint-yamllint
- Installer64
  - dev-lib-installer64: added BashLib64 parameters to support embedded install
- DevBin64
  - dev-bootstrap
    - Change gitignore to use full paths
- GitHub
  - dev-release-github: moved globals to env file

### Fixed

- DevBin64
  - dev-bootstrap
    - added missing default for local debug variable
    - fixed .env quotes
  - dev-set: added missing trace setting

## [0.3.0]

### Changed

- DevBin64
  - dev-set: DEV_PATH_ROOT is not set by the script, not needed in .local
  - dev-bootstrap: updated dot files templates
- All
  - Migrated shared variables to dedicated dev-env-COMPONENT file

## [0.2.0]

### Added

- DevOps tools migrated from CodeSkel64 project:
  - Container
  - Installer64
  - BashLib64
  - GitHub
  - Bash
  - GIT
  - Hadolint
  - TestManSH
  - YAMLLint

## [0.1.0]

### Added

- Repository bootstrap
  - dev-bootstrap
