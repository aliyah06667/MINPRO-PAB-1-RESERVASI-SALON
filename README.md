# MINI PROJECT PEMOGRAMAN APLIKASI BERGERAK (1) "RESERVASI SALON"

# BEAUTI-FY SALON

<img width="1200" height="400" alt="beauti-fysalon img" src="https://github.com/user-attachments/assets/cfa42b6d-4117-47af-a00c-5bc3ce3750c5" />


## Disusun Oleh: 

Nama: Aliyah Azzah Sekedang

NIM: 2409116021

## Deskripsi Aplikasi
Beauti-Fy Salon adalah aplikasi mobile berbasis Flutter yang digunakan untuk melakukan reservasi layanan salon secara digital. Aplikasi ini membantu pengguna dalam mencatat data booking layanan salon dengan mudah, cepat, dan terorganisir.

Melalui aplikasi ini, pengguna dapat menambahkan data reservasi, melihat daftar appointment yang sudah dibuat, mengedit data jika terjadi perubahan, serta menghapus reservasi yang tidak diperlukan.

Aplikasi ini dibuat untuk memenuhi tugas praktikum Flutter dengan menerapkan konsep dasar CRUD, form input, dan navigasi multi-halaman.

## 🗂 Struktur Halaman

<img width="208" height="224" alt="image" src="https://github.com/user-attachments/assets/e19819f0-576c-42cd-9dd8-11b4fb0b361c" />

### _main.dart_

Berfungsi sebagai entry point aplikasi.
Mengatur tema aplikasi, warna, font, dan menentukan halaman awal (HomePage).

### _home_page.dart_

Menampilkan daftar reservasi.
Mengelola state data reservasi serta fitur:
- Tambah data
- Edit data
- Hapus data

### _add_page.dart_

Berisi form untuk menambahkan reservasi baru.
Menggunakan TextField, DropdownButtonFormField, dan showDatePicker.

### _edit_page.dart_

Berfungsi untuk mengubah data reservasi yang sudah ada.
Data lama akan otomatis terisi dan dapat diperbarui.

### _reservation.dart_

Model class yang digunakan untuk menyimpan struktur data reservasi seperti:
- name
- contact
- service
- date
- notes
- price

## 📌 Fitur Aplikasi

1️⃣ Create (Tambah Data Reservasi)

Pengguna dapat menambahkan reservasi baru dengan mengisi form yang terdiri dari:
- Nama pelanggan
- Nomor kontak
- Pilihan layanan salon (Dropdown)
- Tanggal reservasi (Date Picker)
- Catatan tambahan/Notes (opsional)
Harga layanan akan otomatis ditampilkan sesuai layanan yang dipilih.


2️⃣ Read (Menampilkan Data Reservasi)

Semua data reservasi yang telah ditambahkan akan ditampilkan dalam bentuk list pada halaman utama.
Setiap item reservasi menampilkan:
- Nama pelanggan
- Nomor kontak
- Jenis layanan + harga
- Tanggal reservasi
- Catatan (jika ada)
Jika belum ada reservasi, akan muncul tampilan informasi bahwa belum ada appointment.


3️⃣ Update (Edit Data Reservasi)

Pengguna dapat mengedit data reservasi dengan menekan tombol edit pada item reservasi.
Data lama akan otomatis terisi di form edit dan dapat diperbarui sesuai kebutuhan.


4️⃣ Delete (Hapus Data Reservasi)

Pengguna dapat menghapus data reservasi dengan menekan tombol delete pada setiap item reservasi.


5. Multi-Page Navigation

Aplikasi memiliki beberapa halaman:
- Home Page (daftar booking)
- Add Reservation Page
- Edit Reservation Page

6. Modern UI Design

Aplikasi memiliki tampilan modern dengan:
- Card layout
- Rounded button
- Clean interface

## 🧩 Widget yang Digunakan

Berikut adalah beberapa widget utama yang digunakan dalam aplikasi ini:
- MaterialApp
- Scaffold
- AppBar
- SafeArea
- Column & Row
- Container
- ListView.builder
- Text
- TextField
- DropdownButtonFormField
- ElevatedButton
- FloatingActionButton
- Icon & IconButton
- Navigator
- SingleChildScrollView
- showDatePicker
- TextEditingController

## 🚀 Cara Menggunakan Aplikasi

Berikut adalah langkah-langkah penggunaan aplikasi Beauti-Fy Salon:

1️⃣ Membuka Aplikasi

Saat aplikasi dijalankan, pengguna akan langsung masuk ke halaman utama (Home Page).
Di halaman ini akan ditampilkan:
- Logo dan nama aplikasi
- Tampilan pembuka
- Daftar reservasi (jika sudah ada data)
- Tombol "Book Now" di bagian bawah
- Jika belum ada reservasi, akan muncul pesan “No Appointment Yet”.

2️⃣ Menambahkan Reservasi Baru (Create)

Untuk membuat reservasi baru:
- Tekan tombol "Book Now"
- Isi form reservasi yang tersedia:
- Customer Name
- Contact Number
- Select Service (pilih layanan dari dropdown)
- Choose Date (pilih tanggal melalui date picker)
- Notes (opsional)
- Setelah semua data terisi, tekan tombol "Save Reservation"
Setelah disimpan, pengguna akan otomatis kembali ke halaman utama dan data reservasi akan langsung tampil dalam daftar.

3️⃣ Melihat Daftar Reservasi (Read)

Semua reservasi yang telah ditambahkan akan muncul dalam bentuk list pada halaman utama. Setiap kartu reservasi menampilkan sesuai dengan data yang sebelumnya telah diisi.


4️⃣ Mengedit Reservasi (Update)

Untuk mengubah data reservasi:
- Tekan ikon edit (✏️) pada salah satu item reservasi
- Halaman edit akan terbuka dengan data yang sudah terisi otomatis
- Ubah data sesuai kebutuhan
- Tekan tombol "Update Reservation"
Data akan langsung diperbarui dan kembali ke halaman utama.

5️⃣ Menghapus Reservasi (Delete)

Untuk menghapus reservasi:
- Tekan ikon delete (🗑️) pada item reservasi
Data akan langsung terhapus dari daftar

## Tampilan Aplikasi

Home Page

<img width="1919" height="901" alt="image" src="https://github.com/user-attachments/assets/2a4dacd6-29c4-4e4f-b102-667e6f5d422a" />

<img width="1919" height="909" alt="image" src="https://github.com/user-attachments/assets/53ec50a9-5abc-4323-b7d7-12604c8fcf04" />

Tambah Data

<img width="1918" height="905" alt="image" src="https://github.com/user-attachments/assets/4a671609-9ff4-4af6-8ca3-2359b63da587" />

<img width="1919" height="905" alt="image" src="https://github.com/user-attachments/assets/bdcd9403-8c86-418d-bdbb-c88f6da48f46" />

<img width="1918" height="900" alt="image" src="https://github.com/user-attachments/assets/e1051516-29fc-4785-b904-5fbad9791f49" />

Edit Data

<img width="1918" height="906" alt="image" src="https://github.com/user-attachments/assets/a1e12ece-111d-43eb-9b15-d94e80b5e829" />

<img width="1918" height="203" alt="image" src="https://github.com/user-attachments/assets/2e7c3590-e951-4a7a-99b1-7a80cb8f84a7" />

⚠️ Catatan 

- Data reservasi hanya tersimpan sementara (in-memory).
- Jika aplikasi ditutup atau direstart, data akan hilang.
- Belum menggunakan database atau penyimpanan lokal permanen.

 <img width="736" height="736" alt="image" src="https://github.com/user-attachments/assets/e863b9fc-5cae-4701-8eef-ab15c3c666a1" />
