<div align="center">

# 👨‍💻 @mrchucu1's Dotfiles

My personal configuration files for a consistent and customized development environment. Bonus shortcuts.

<!-- Badges -->
<p>
  <img src="https://img.shields.io/github/last-commit/mrchucu1/dotfiles?style=for-the-badge&logo=github&logoColor=white&color=black" alt="Last Commit"/>
  <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License: MIT"/>
  <img src="https://img.shields.io/badge/Built%20with-Shell%20%26%20VimL-lightgrey.svg?style=for-the-badge&color=black" alt="Built with Shell & VimL"/>
</p>

</div>

---

## ✨ Features

This setup installs and configures a complete terminal environment with a focus on productivity for cloud-native development.

*   **💻 Shell:** **Zsh** with **Oh My Zsh** for a powerful shell experience.
    *   Includes `zsh-syntax-highlighting` and `zsh-autosuggestions` plugins.
*   **✍️ Editor:** **Neovim** is configured as the default editor with a modern plugin set:
    *   **`coc.nvim`** for IDE-like autocompletion and code navigation.
    *   **`vim-fugitive`** for seamless Git integration inside Neovim.
    *   **`fzf.vim`** for blazing-fast fuzzy file finding.
    *   **`gruvbox`** theme for a pleasant aesthetic.
*   **🪟 Terminal Multiplexer:** A powerful **Tmux** setup based on the popular [gpakosz/.tmux](https://github.com/gpakosz/.tmux) configuration.
*   **📦 Version Management:** Installs **`asdf`** to easily manage multiple runtime versions (e.g., Node.js, Go).
*   **☁️ Cloud-Native Aliases:** Includes a large set of aliases for `kubectl` and `gcloud` to speed up your workflow.

---

## 🛠️ One-Step Installation

Run the single command for your OS to download the installer and begin the setup.

### 🍎 macOS
```bash
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/mrchucu1/dotfiles/refs/heads/master/prepare.osx.sh)"
```

### 🐧 Linux

#### **Ubuntu**
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mrchucu1/dotfiles/refs/heads/master/prepare.ubuntu.sh)"
```

#### **Fedora**
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mrchucu1/dotfiles/refs/heads/master/prepare.fedora.sh)"
```

#### **Arch Linux**
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/mrchucu1/dotfiles/refs/heads/master/prepare.arch.sh)"
```

After the script completes, restart your terminal or log out and log back in for all changes to take effect.

---

## ⌨️ Keybindings & Aliases

Here are some of the custom keybindings and aliases you can use after installation.

<details>
  <summary><strong>Kubernetes Aliases (using k=kubectl)</strong></summary>

  | Alias   | Description                       |
  |---------|-----------------------------------|
  | `k`     | `kubectl`                         |
  | `kgp`   | `kubectl get pods`                |
  | `kl`    | `kubectl logs`                    |
  | `klf`   | `kubectl logs -f`                 |
  | `keti`  | `kubectl exec -ti`                |
  | `kaf`   | `kubectl apply -f`                |
  | `kcgc`  | `kubectl config get-contexts`     |
  | `kcuc`  | `kubectl config use-context`      |
  | `kcn`   | Set the namespace for the current context |
  | `kgd`   | `kubectl get deployment`          |
  | `kdd`   | `kubectl describe deployment`     |
  | `krsd`  | `kubectl rollout status deployment`|
  | `kgs`   | `kubectl get service`             |
  | `...`   | *And many more in the `zshrc` file!*|
</details>

<details>
  <summary><strong>Neovim Keybindings (Leader key is `<Space>`)</strong></summary>

  | Keybinding      | Action                               |
  |-----------------|--------------------------------------|
  | **Navigation**  |                                      |
  | `<C-p>`         | Fuzzy find Git files (fzf)           |
  | `<Leader>pf`    | Fuzzy find files (fzf)               |
  | `<Leader>pv`    | Open file explorer (`netrw`)         |
  | `<Leader>h/j/k/l` | Move between window splits         |
  | **CoC (LSP)**   |                                      |
  | `<Leader>gd`    | Go to definition                     |
  | `<Leader>gi`    | Go to implementation                 |
  | `<Leader>gr`    | Find references                      |
  | `<Leader>rr`    | Rename symbol                        |
  | `g[` / `g]`     | Go to previous/next diagnostic       |
  | **Fugitive (Git)**|                                      |
  | `<Leader>gs`    | Open Git status window               |
  | `<Leader>gh`    | `diffget` from "their" branch (merge)|
  | `<Leader>gu`    | `diffget` from "our" branch (merge)  |
</details>

---

## 🐳 Testing with Docker

The `tests/` directory contains Dockerfiles to build and validate the setup for each supported Linux distribution.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
