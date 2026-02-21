
FROM ghcr.io/pterodactyl/panel:latest

# Beralih ke root untuk menginstal dependensi OS
USER root

# Menginstal mariadb-client (ekuivalen mysql-client di Alpine) tanpa menyimpan cache
# Ini menyelesaikan masalah "sh: mysql: not found"
RUN apk add --no-cache mariadb-client

# Kita TIDAK mendefinisikan ENTRYPOINT atau CMD baru.
# Image bawaan sudah menggunakan S6 overlay / Supervisor yang akan otomatis tereksekusi.
