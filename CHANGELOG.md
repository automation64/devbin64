# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

[1.0.0]: https://github.com/automation64/installer64/compare/0.8.0...1.0.0
[0.8.0]: https://github.com/automation64/installer64/compare/0.7.0...0.8.0
[0.7.0]: https://github.com/automation64/installer64/compare/0.6.0...0.7.0
[0.6.0]: https://github.com/automation64/installer64/compare/0.5.0...0.6.0
[0.5.0]: https://github.com/automation64/installer64/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/automation64/installer64/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/automation64/installer64/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/automation64/installer64/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/automation64/devbin64/releases/tag/0.1.0
