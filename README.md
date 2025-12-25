# Auto Install SmokePing (Native)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OS: Ubuntu / Debian / Mint](https://img.shields.io/badge/OS-Ubuntu%20%7C%20Debian%20%7C%20Mint-orange.svg)](https://www.debian.org/)
[![Platform: Debian-based](https://img.shields.io/badge/Platform-Debian--based-blue.svg)](https://www.debian.org/distrib/packages)

Skrip bash ini dirancang untuk melakukan instalasi **SmokePing** secara otomatis pada sistem operasi berbasis Debian/APT. Skrip ini menangani konfigurasi timezone, instalasi paket, hingga perbaikan izin akses direktori agar sistem monitoring langsung siap digunakan.

## 🚀 Fitur Utama
* **Otomatisasi Timezone:** Mengatur sistem ke `Asia/Jakarta` untuk akurasi grafik.
* **Integrasi Web Server:** Otomatis mengonfigurasi Apache2 dengan modul `cgi` dan `fcgid`.
* **Fix Permission:** Menjamin direktori cache dapat ditulisi oleh user `www-data`.
* **Dynamic Pathing:** Menyesuaikan lokasi file binari `fping` secara otomatis.

## 🖥️ OS yang Didukung (Debian-Based)
Skrip ini menggunakan package manager `apt`. Pastikan Anda menggunakan salah satu dari OS berikut:

| Nama OS | Versi Teruji | Status |
| :--- | :--- | :--- |
| **Ubuntu** | 20.04, 22.04, 24.04 (LTS) | ✅ Fully Supported |
| **Debian** | 10, 11, 12 | ✅ Fully Supported |
| **Linux Mint** | 20, 21, 22 | ✅ Fully Supported |
| **Kali Linux** | Rolling Edition | ✅ Fully Supported |

> **Catatan:** Skrip ini **tidak mendukung** distro berbasis RHEL (CentOS/AlmaLinux) atau Arch Linux.

## 🛠️ Cara Penggunaan

1. **Persiapan:**
   Pastikan Anda memiliki akses root atau sudo.

2. **Eksekusi Skrip:**
   ```bash
   sudo curl https://raw.githubusercontent.com/Iyankz/Smokeping/refs/heads/main/smokeping.sh | sudo bash
   ```


## 📂 Pasca Instalasi
Konfigurasi Target: 
```bash
/etc/smokeping/config.d/Targets

Restart Service: sudo systemctl restart smokeping
```
## 👥 Credits
Proyek ini dikembangkan oleh:

* **Iyankz** (Lead Developer/Owner)
* **Gemini** (Google AI) (Assistant Developer)
