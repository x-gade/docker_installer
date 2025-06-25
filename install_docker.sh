#!/bin/bash
set -e

echo "Обновление пакетов:"
sudo apt update

echo "Устанавливаем зависимости:"
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo "Добавляем GPG-ключ Docker:"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
  | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "Добавляем репозиторий Docker:"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Обновляем пакеты снова после добавления репозитория:"
sudo apt update

echo "Устанавливаем Docker Engine и Compose Plugin:"
sudo apt install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

echo "Docker установлен:"
docker version

echo "Docker Compose Plugin установлен:"
docker compose version

echo "Установка завершена!"
