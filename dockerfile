FROM ghcr.io/pterodactyl/panel:latest

# Instal mariadb-client untuk mendukung perintah 'mysql' saat migrasi
USER root
RUN apk add --no-cache mariadb-client

# Tetap gunakan entrypoint asli dari image Pterodactyl
