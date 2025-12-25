#!/bin/bash

# Pastikan skrip dijalankan sebagai root
if [[ $EUID -ne 0 ]]; then
   echo "Skrip ini harus dijalankan sebagai root (gunakan sudo)."
   exit 1
fi

echo "--- Mengatur Timezone ke Asia/Jakarta ---"
timedatectl set-timezone Asia/Jakarta

echo "--- Memulai Instalasi SmokePing ---"

# 1. Update sistem
apt update && apt upgrade -y

# 2. Install SmokePing, Apache2, dan fping
apt install -y smokeping curl apache2 libapache2-mod-fcgid fping

# 3. Aktifkan modul Apache yang diperlukan
a2enconf smokeping
a2enmod cgi
a2enmod fcgid

# 4. Buat direktori cache dan perbaiki perizinan
mkdir -p /var/cache/smokeping
chown -R smokeping:www-data /var/cache/smokeping
chmod -R 775 /var/cache/smokeping

# 5. Konfigurasi path fping (memastikan SmokePing tahu lokasi fping)
FPING_PATH=$(which fping)
sed -i "s|binary = /usr/bin/fping|binary = $FPING_PATH|" /etc/smokeping/config.d/pathnames

# 6. Restart layanan untuk menerapkan Timezone dan Konfigurasi
systemctl restart smokeping
systemctl restart apache2

echo "--- Instalasi Selesai ---"
echo "Waktu sistem saat ini: $(date)"
echo "Akses SmokePing di: http://$(hostname -I | awk '{print $1}')/smokeping/smokeping.cgi"
