# Docker Installer for Ubuntu

Автоматизированный Bash-скрипт для установки **Docker Engine** и **Docker Compose** на Ubuntu 20.04/22.04+.

---

## Репозиторий

🔗 GitHub: [`x-gade/docker_installer`](https://github.com/x-gade/docker_installer)

---

## Что делает скрипт

- Обновляет пакеты
- Устанавливает зависимости (`curl`, `gnupg`, `lsb-release`, `ca-certificates`)
- Добавляет официальный GPG-ключ Docker
- Добавляет APT-репозиторий Docker
- Устанавливает:
  - Docker Engine (`docker-ce`)
  - Docker CLI
  - Containerd
  - Buildx Plugin
  - Compose Plugin
- Выводит версии установленного Docker и Compose

---

## Установка

```bash
git clone git@github.com:x-gade/docker_installer.git
cd docker_installer
chmod +x install_docker.sh
./install_docker.sh
