# Utilisez une image de base Debian
FROM debian:latest

# Installez QEMU et curl
RUN apt-get update && apt-get install -y curl qemu binfmt-support qemu-user-static && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configurez binfmt pour QEMU
RUN update-binfmts --enable qemu-x86_64

# Exécutez la commande d'installation
RUN curl --proto '=https' --tlsv1.2 -LsSf https://github.com/cncf/landscape2/releases/download/v0.10.0/landscape2-installer.sh | sh

RUN landscape2 --help