# devbin64

![License](https://img.shields.io/github/license/automation64/devbin64)
![GitHub stars](https://img.shields.io/github/stars/automation64/devbin64?style=social)
![GitHub forks](https://img.shields.io/github/forks/automation64/devbin64?style=social)

🚀 **DevOps Scripts for Repository Management and CI/CD Automation**

---

- [devbin64](#devbin64)
  - [📌 Overview](#-overview)
  - [📦 Deployment](#-deployment)
    - [Minimum Requirements](#minimum-requirements)
    - [Installation](#installation)
  - [🚀 Usage](#-usage)
    - [Deploy to code repository](#deploy-to-code-repository)
    - [Run CICD scripts](#run-cicd-scripts)
    - [Load CICD environment variables](#load-cicd-environment-variables)
  - [🏗️ Architecture](#️-architecture)
    - [Directory Structure](#directory-structure)
    - [Configuration Files](#configuration-files)
    - [Module boilerplates](#module-boilerplates)
  - [🛠 Contributing](#-contributing)
  - [📜 License](#-license)
  - [👤 Author](#-author)

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

## 🚀 Usage

### Deploy to code repository

- Initialize your local git repository as usual. For example

```shell
mkdir my-repo
cd my-repo
git init
```

- (Optional) Select CICD modules for your repository.

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

### Run CICD scripts

```shell
./bin/dev-<TASK>-<MODULE>
```

### Load CICD environment variables

Make available in the current shell the DevBin64 environment variables: 

```shell
source ./bin/dev-set
```

---

## 🏗️ Architecture

### Directory Structure

The repository is organized as follows:

- `bin/`: **DevBin64** scripts.
- `build/`: Build artifacts and temporary files.
- `docs/`: Documentation and skeleton files for the project.
- `etc/`: Project-specific configuration files.
- `lib/`: Shared libraries and modules.
- `logs/`: Logs generated during development and CI/CD processes.
- `src/`: Source code for the project.
- `test/`: Test cases and related files.
- `tmp/`: Temporary files.
- `var/`: Variable data files.
- `vault/`: Local vault for secrets (excluded from version control).

### Configuration Files

The repository includes the following configuration files:

- `.dev.env`: Development environment variables.
- `.gitignore`: Git ignore rules for the project.
- `.local.env`: (Optional) Local environment variables.
- `vault/.secrets.env`: (Optional) Secrets environment variables.
- `doc.*`: Configuration file templates.

### Module boilerplates

Additional module boilerplates are available in the **DevBin64** for adding to your repository:

- `/opt/devbin64/lib/<MODULE>/.github`: GitHub Actions
- `/opt/devbin64/lib/<MODULE>/test`: Code testing
- `/opt/devbin64/lib/<MODULE>/.devcontainer`: DevContainers
- `/opt/devbin64/lib/<MODULE>/<CONFIGURATION>`: module specific configuration file

---

## 🛠 Contributing

Contributions are welcome! Help us improve by submitting issues, feature requests, or pull requests.

- [Code of Conduct](https://github.com/automation64/devbin64/blob/main/CODE_OF_CONDUCT.md)

---

## 📜 License

Installer64 is licensed under the [Apache-2.0 License](https://www.apache.org/licenses/LICENSE-2.0.txt).

---

## 👤 Author

- [SerDigital64](https://github.com/serdigital64)

---

🌟 **If you find this project useful, consider giving it a star!** ⭐
