# devbin64

![License](https://img.shields.io/github/license/automation64/devbin64)
![GitHub stars](https://img.shields.io/github/stars/automation64/devbin64?style=social)
![GitHub forks](https://img.shields.io/github/forks/automation64/devbin64?style=social)
![Release Downloads](https://img.shields.io/github/downloads/automation64/devbin64/total)

🚀 **DevOps Scripts for Repository Management and CI/CD Automation**

---

- [devbin64](#devbin64)
  - [📌 Overview](#-overview)
  - [📦 Deployment](#-deployment)
    - [Minimum Requirements](#minimum-requirements)
    - [Installation](#installation)
  - [🚀 Usage](#-usage)
    - [Deploy to code repository](#deploy-to-code-repository)
    - [Run CI-CD tasks](#run-ci-cd-tasks)
    - [Load CI-CD environment variables](#load-ci-cd-environment-variables)
  - [🏗️ Architecture](#️-architecture)
    - [Repository Directory Structure](#repository-directory-structure)
    - [Configuration Files](#configuration-files)
    - [Standard module tasks](#standard-module-tasks)
    - [Optional module content](#optional-module-content)
  - [🛠 Contributing](#-contributing)
  - [⚠️ Disclaimer](#️-disclaimer)
  - [📜 License](#-license)
  - [👤 Author](#-author)

---

## 📌 Overview

**DevBin64** is a collection of DevOps scripts designed to simplify the maintenance of code repositories and automate CI/CD tasks. It provides a standardized approach to managing repositories and implementing routine DevOps workflows.

---

## 📦 Deployment

### Minimum Requirements

- Bash V4: used by the scripts.
- Curl, Tar, and GZip: used to download and unpack packages.

### Installation

**DevBin64** can be installed using the **Installer64** tool:

```shell
curl -sL https://raw.githubusercontent.com/automation64/installer64/main/src/bootstrap | sh
sudo /opt/inst64/install-devbin64
```

---

## 🚀 Usage

### Deploy to code repository

- Initialize your local git repository as usual. For example

```shell
mkdir my-repo
cd my-repo
git init
```

- (Optional) Select CI-CD modules for your repository.

```shell
# List available modules
ls /opt/devbin64/lib
# Set selected modules
export DEV_BOOTSTRAP_MODULES='MODULE1 MODULE2 MODULEX'
```

- Deploy **DevBin64** to your repository

```shell
devbin64
```

### Run CI-CD tasks

```shell
./bin/dev-<TASK>-<MODULE>
```

### Load CI-CD environment variables

Make available in the current shell the DevBin64 environment variables:

```shell
source ./bin/dev-set
```

---

## 🏗️ Architecture

### Repository Directory Structure

The repository is organized as follows:

- `bin/`: **DevBin64** scripts.
- `build/`: Build artifacts and temporary files. Excluded from version control.
- `docs/`: Documentation and skeleton files for the project.
- `etc/`: Project-specific configuration files.
- `lib/`: Shared libraries and modules. Excluded from version control.
- `logs/`: Logs generated during development and CI/CD processes. Excluded from version control.
- `src/`: Source code for the project.
- `test/`: Test cases and related files.
- `tmp/`: Temporary files. Excluded from version control.
- `var/`: Variable data files.
- `vault/`: Local vault for secrets. Excluded from version control.

### Configuration Files

The repository includes the following configuration files:

- `.dev.env`: Development environment variables.
- `.gitignore`: Git ignore rules for the project.
- `.local.env`: (Optional) Local environment variables.
- `vault/.secrets.env`: (Optional) Secrets environment variables.
- `dot.*`: Configuration file templates.

### Standard module tasks

Modules can implement one or more of the following CI-CD tasks:

- `build`: build application from source code
- `cli`: run dev-time CLI tool
- `deliver`: deliver application package
- `deploy`: deploy application package to environment
- `env`: define module shell environment variables and functions
- `lab`: run dev-time container
- `lib`: download dev-time tools
- `lint`: lint source code
- `pack`: prepare application for distribution
- `prep`: run dev-time source code maintenance tasks (update dependency maps, etc.)
- `release`: release application source code
- `remove`: remove deployed application from environment
- `run`: run dev-time application
- `sast`: run SAST on application source code
- `sbom`: create application SBOM
- `sca`: run SCA on application source code
- `test`: test application

### Optional module content

Optional module content is available for you to manually copy to your repository:

- `/opt/devbin64/lib/<MODULE>/dot.github`: GitHub Actions
- `/opt/devbin64/lib/<MODULE>/test`: Code testing
- `/opt/devbin64/lib/<MODULE>/dot.devcontainer`: DevContainers
- `/opt/devbin64/lib/<MODULE>/dot.<CONFIGURATION>`: module specific configuration file

---

## 🛠 Contributing

Contributions are welcome! Help us improve by submitting issues, feature requests, or pull requests.

- [Code of Conduct](https://github.com/automation64/devbin64/blob/main/CODE_OF_CONDUCT.md)

---

## ⚠️ Disclaimer

This repository is provided "as is" without any warranties. The author is not responsible for any damages or issues arising from its use. Additionally, this project is not affiliated with or endorsed by any organization or entity. Use at your own risk.

---

## 📜 License

Installer64 is licensed under the [Apache-2.0 License](https://www.apache.org/licenses/LICENSE-2.0.txt).

---

## 👤 Author

- [SerDigital64](https://github.com/serdigital64)

---

🌟 **If you find this project useful, consider giving it a star!** ⭐
