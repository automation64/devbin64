# Script: devbin64

- [Script: devbin64](#script-devbin64)
  - [Overview](#overview)
  - [Usage](#usage)
  - [Deployment](#deployment)
    - [Requirements](#requirements)
    - [Installation](#installation)
  - [Contributing](#contributing)
    - [License](#license)
    - [Author](#author)

## Overview

_DevBin64_ is a collection devops scripts for maintaining code repositories and implementing CICD automation tasks

## Usage

- Once `devbin64` has been deployed DevOps scripts will be available at `<PROJECT>/bin`
- Scripts can be invoded anytime as needed to fullfill routine and/or CICD DevOps tasks

## Deployment

### Requirements

- Bash: used by installer scripts.
- Curl, Tar and GZip: used to download and unpack packages

### Installation

- Create and initialize empty GIT repository

```shell
mkdir NEW-PROJECT &&
cd NEW-PROJECT &&
git init
```

- (optional) Add remotes

```shell
git remote add origin ORIGIN_URL
```

- Download the latest version of the `dev-bootstrap` script to the new repository
- Run the boostrap process

```shell
bash ./dev-bootstrap
```

- (optional) Declare local variables and secrets in:
  - `dot.local`
  - `dot.secrets`

- Review changes and complete first commit

```shell
git status
git add .
git commit -m 'dev: initialized repository'
# Push if using remotes
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

- [Guidelines](https://github.com/automation64/devbin64/blob/main/CONTRIBUTING.md)
- [Contributor Covenant Code of Conduct](https://github.com/automation64/devbin64/blob/main/CODE_OF_CONDUCT.md)

### License

[Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0.txt)

### Author

- [SerDigital64](https://github.com/serdigital64)
