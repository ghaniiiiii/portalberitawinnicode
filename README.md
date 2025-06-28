# 📰 Portal Berita dengan Laravel

**website portal berita** adalah aplikasi portal berita yang bersih dan modern, dibangun menggunakan **Laravel 10**. Aplikasi ini menyajikan berita dengan cepat, antarmuka uncluttered (tidak berantakan), dan dilengkapi dengan panel admin yang efisien berkat **Filament**. Sistem ini memungkinkan manajemen konten yang mudah dan terstruktur.

---

## 🌟 Tentang Proyek

Proyek ini bertujuan untuk menyediakan platform portal berita yang cepat, aman, dan mudah digunakan — baik dari sisi pembaca maupun administrator. Fokus utama adalah menciptakan:

- Pengalaman membaca yang nyaman
- Sistem pengelolaan konten yang terpusat dan intuitif
- Manajemen artikel, kategori, penulis, dan iklan dalam satu panel

---

## 🚀 Dibangun Dengan

- ⚙️ [Laravel 10](https://laravel.com/) – Framework PHP yang elegan
- 🧱 [Bootsrab stisla]([https://filamentphp.com/](https://react-free-admin-dashboard-template.netlify.app)) – template bootsrap
- 🛢️ MySQL – Sistem manajemen basis data relasional

---

## ✨ Fitur Utama

### 📰 Tampilan Publik:
- Halaman utama dinamis (navbar, detail berita, rekomenadasi berita, berita terbaru, komen, tags, iklan, footer)
- Detail artikel dengan fokus pada keterbacaan
- Halaman kategori untuk melihat berita per topik
- Profil penulis dan daftar artikel terkait
- Pencarian berita interaktif

### 🔧 Panel Admin (Filament):
- CRUD Artikel
- CRUD Kategori
- CRUD footer
- CRUD Iklan Banner

---

## 🔧 Instalasi & Konfigurasi

### ✅ Prasyarat

Pastikan server lokal Anda memenuhi spesifikasi berikut:

- PHP 8.2 atau lebih tinggi
- Composer
- Database MySQL/MariaDB

---

### 🛠️ Langkah Instalasi

#### 1. Clone Repository

```bash
https://github.com/ghaniiiiii/portalberitawinnicode.git
```

#### 2. Install depedensi PHP

```bash
composer install
```
Buat & Konfigurasi File Environment Salin file .env.example, lalu generate kunci aplikasi.

Untuk Windows: copy .env.example .env
Untuk macOS/Linux: cp .env.example .env
php artisan key:generate
Setup Database (Import dari File .sql)

a. Buka XAMPP Control Panel dan jalankan layanan Apache & MySQL.

b. Buka http://localhost/phpmyadmin di browser Anda.

c. Buat database baru yang masih kosong dengan nama winnicode.

d. Buka file .env dan pastikan konfigurasi database Anda sudah benar. Seharusnya terlihat seperti ini:

```DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=up2date
DB_USERNAME=root
DB_PASSWORD=
```
e. Kembali ke phpMyAdmin, klik pada database up2date yang baru Anda buat di panel kiri.

f. Buka tab "Import".

g. Klik tombol "Choose File" dan pilih file .sql yang sudah tersedia di dalam folder proyek ini.


Aplikasi ini menggunakan aset gambar (seperti thumbnail artikel)  dari file public/asset/uplod yang telah disediakan bersama proyek. Ikuti langkah-langkah berikut:


Jalankan Aplikasi

Jalankan Server Laravel

php artisan serve
Akses Aplikasi

Admin Logins:
url:{your host}/admin/login   
email: admin@gmail.com
password: password

User Logins:
email: user123@gmail.com
password: 12345678

Writer Logins:
url:{your host}/admin/login
email: writer@gmail.com
password: 12345678
