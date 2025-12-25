# Auto Install SmokePing (Native)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OS: Ubuntu / Debian / Mint](https://img.shields.io/badge/OS-Ubuntu%20%7C%20Debian%20%7C%20Mint-orange.svg)](https://ubuntu.com/)
[![Platform: Debian-based](https://img.shields.io/badge/Platform-Debian--based-blue.svg)](https://www.debian.org/)

Skrip bash otomatis untuk instalasi dan konfigurasi **SmokePing** secara native pada sistem operasi berbasis Debian/Ubuntu. Skrip ini menangani pengaturan timezone, instalasi dependensi, hingga konfigurasi target awal.

---

## 🚀 Fitur Utama
* **Auto-Timezone:** Otomatis mengatur sistem ke `Asia/Jakarta`.
* **Web Server Ready:** Otomatis mengaktifkan modul CGI/FastCGI pada Apache2.
* **Fix Permissions:** Mengatur hak akses direktori agar grafik langsung muncul tanpa error.
* **Default Targets:** Menyertakan contoh target monitor (Google DNS & IIX).
* **Telegram Support:** Kompatibel dengan skrip notifikasi eksternal.

## 🖥️ Kompatibilitas OS
Skrip ini dirancang khusus untuk distribusi Linux berbasis `apt`:

| Distribusi | Versi Teruji | Status |
| :--- | :--- | :--- |
| **Ubuntu** | 20.04, 22.04, 24.04 | ✅ Fully Supported |
| **Debian** | 10, 11, 12 | ✅ Fully Supported |
| **Linux Mint** | 20, 21, 22 | ✅ Fully Supported |
| **Kali Linux** | Rolling Edition | ✅ Fully Supported |

---

## 🛠️ Cara Instalasi (One-Liner)

Buka terminal Anda dan jalankan perintah di bawah ini:

```bash
sudo curl -sSL https://raw.githubusercontent.com/Iyankz/Smokeping/main/smokeping.sh | sudo bash
```

## 🤖 Notifikasi Telegram (Opsional)
Jika Anda ingin mendapatkan notifikasi ke Telegram saat host down:

* Siapkan TOKEN dan CHAT_ID Telegram
* Jalankan perintah dibawah :
```bash
sudo curl -sSL https://raw.githubusercontent.com/Iyankz/Smokeping/refs/heads/main/Telegram-Smokeping.sh | sudo bash
```

## 📂 Lokasi File Penting
Konfigurasi Target: 
```bash
/etc/smokeping/config.d/Targets
```
Konfigurasi Alert: 
```bash
/etc/smokeping/config.d/Alerts
```

##👥 Credits
Proyek ini dikembangkan oleh:

* **Iyankz** (Lead Developer)

* **Gemini** (Assistant Developer)
