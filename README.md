## MINI PROJECT PEMOGRAMAN APLIKASI BERGERAK (1) "RESERVASI SALON"

## BEAUTI-FY SALON

<img width="1200" height="400" alt="beauti-fysalon img" src="https://github.com/user-attachments/assets/cfa42b6d-4117-47af-a00c-5bc3ce3750c5" />


## Disusun Oleh: 

Nama: Aliyah Azzah Sekedang

NIM: 2409116021

## 📌 Deskripsi Aplikasi
**Beauti-Fy Salon** adalah aplikasi mobile berbasis Flutter yang digunakan untuk melakukan reservasi layanan salon secara digital. Aplikasi ini membantu pengguna dalam mencatat data booking layanan salon dengan mudah, cepat, dan terorganisir.

Melalui aplikasi ini, pengguna dapat menambahkan data reservasi, melihat daftar appointment yang sudah dibuat, mengedit data jika terjadi perubahan, serta menghapus reservasi yang tidak diperlukan.

Aplikasi ini dibuat untuk memenuhi tugas praktikum Flutter dengan menerapkan konsep dasar CRUD, form input, dan navigasi multi-halaman.

## 🗂 Struktur Halaman

<img width="205" height="223" alt="image" src="https://github.com/user-attachments/assets/e2f24933-fb80-4018-9057-f47fec6e9de8" /><br>

***main.dart***

Berfungsi sebagai entry point aplikasi untuk mengatur tema aplikasi, warna, font, dan menentukan halaman awal (HomePage).

***home_page.dart***

Menampilkan daftar reservasi dan mengelola state data reservasi serta fitur-fitur yaitu Tambah data, Edit data dan Hapus data

***add_page.dart***

Berisi form untuk menambahkan data reservasi baru menggunakan TextField, DropdownButtonFormField, dan showDatePicker.

***edit_page.dart***

Berfungsi untuk mengubah data reservasi yang sudah ada. Data lama akan otomatis terisi dan dapat diperbarui.

***reservation.dart***

Model class yang digunakan untuk menyimpan struktur data reservasi seperti name, contact, service, date, notes dan price.

## 📌 Fitur Aplikasi

1️⃣ Create (Tambah Data Reservasi)

Pengguna dapat menambahkan reservasi baru dengan mengisi form yang terdiri dari:
- Nama pelanggan
- Nomor kontak
- Pilihan layanan salon (Dropdown)
- Tanggal reservasi (Date Picker)
- Catatan tambahan/Notes (opsional)
Harga layanan akan otomatis ditampilkan sesuai layanan yang dipilih.<br>

2️⃣ Read (Menampilkan Data Reservasi)

Semua data reservasi yang telah ditambahkan akan ditampilkan dalam bentuk list pada halaman utama.
Setiap item reservasi menampilkan:
- Nama pelanggan
- Nomor kontak
- Jenis layanan + harga
- Tanggal reservasi
- Catatan (jika ada)
Jika belum ada reservasi, akan muncul tampilan informasi bahwa belum ada appointment.<br>

3️⃣ Update (Edit Data Reservasi)

Pengguna dapat mengedit data reservasi dengan menekan tombol edit pada item reservasi.
Data lama akan otomatis terisi di form edit dan dapat diperbarui sesuai kebutuhan.<br>

4️⃣ Delete (Hapus Data Reservasi)

Pengguna dapat menghapus data reservasi dengan menekan tombol delete pada setiap item reservasi.<br>

5️⃣ Multi-Page Navigation

Aplikasi memiliki beberapa halaman:
- Home Page (daftar booking)
- Add Reservation Page
- Edit Reservation Page


## 📌 Widget yang Digunakan

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

## 📌 Cara Menggunakan Aplikasi

Berikut adalah langkah-langkah penggunaan aplikasi Beauti-Fy Salon:

1️⃣ Membuka Aplikasi

Saat aplikasi dijalankan, pengguna akan langsung masuk ke halaman utama (Home Page).
<p align="center">
   <img src="https://github.com/user-attachments/assets/a8c87877-1100-405e-b830-b1ce89698a2c" width="400" style="border:2px solid #ddd; border-radius:10px;">
</p>

Di halaman ini akan ditampilkan:
- Logo dan nama aplikasi
- Tampilan pembuka
- Daftar reservasi (jika sudah ada data)
- Tombol "Book Now" di bagian bawah
- Jika belum ada reservasi, akan muncul pesan “No Appointment Yet”.

2️⃣ Menambahkan Reservasi Baru (Create)

Untuk membuat reservasi baru:

Form terdiri dari Customer Name, Contact Number, Select Service (pilih layanan dari dropdown), Choose Date (pilih tanggal melalui date picker), dan Notes (opsional)

- Tekan tombol "Book Now"
  <p align="center">
      <img src="https://github.com/user-attachments/assets/48bf3e2b-a76d-401b-80be-3f55f3abdea0" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>

- Isi form reservasi yang tersedia
  - Tampilan Keseluruhan
    <p align="center">
      <img src="https://github.com/user-attachments/assets/2bd5873e-fefe-48b5-86a2-2fb94556542a" width="400" style="border:2px solid #ddd; border-radius:10px;">
    </p>
   
  - Tampilan 'Select Service'
    <p align="center">
      <img src="https://github.com/user-attachments/assets/26c99d11-2551-4367-aab1-46d2a9a55da6" width="400" style="border:2px solid #ddd; border-radius:10px;">
    </p>

  - Tampilan 'Choose Date'
    <p align="center">
      <img src="https://github.com/user-attachments/assets/5f9d6ceb-5dff-48bc-9ba7-a9e6b0633da2" width="400" style="border:2px solid #ddd; border-radius:10px;">
    </p>
 
- Setelah semua data terisi, tekan tombol "Save Reservation"
  <p align="center">
      <img src="https://github.com/user-attachments/assets/f10cc6be-bdbe-4012-8d1c-e2d91a3d27d9" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>

Setelah tersimpan, pada halaman utama data reservasi akan otomatis langsung tercantum dalam daftar.

3️⃣ Melihat Daftar Reservasi (Read)

Semua reservasi yang telah ditambahkan akan muncul dalam bentuk list pada halaman utama. Setiap list reservasi menampilkan sesuai dengan data yang sebelumnya telah diisi.
<p align="center">
   <img src="https://github.com/user-attachments/assets/2ce8531c-4940-4575-97de-d6c010aaebc3" width="400" style="border:2px solid #ddd; border-radius:10px;">
</p>

4️⃣ Mengedit Reservasi (Update)

Untuk mengubah data reservasi:
- Tekan ikon edit (✏️) pada salah satu item reservasi
  <p align="center">
      <img src="https://github.com/user-attachments/assets/fa35e182-c4a3-431c-b1fe-1ee3417e2640" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>

- Halaman edit akan terbuka dengan data yang sudah terisi otomatis
  <p align="center">
      <img src="https://github.com/user-attachments/assets/d3bad329-202a-4d5b-884c-9dd315c23502" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>

- Ubah data sesuai kebutuhan
  <p align="center">
      <img src="https://github.com/user-attachments/assets/1821b605-1ef4-4dab-a0de-cf55b05f36e5" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>
  
- Tekan tombol "Update Reservation"
  <p align="center">
      <img src="https://github.com/user-attachments/assets/21779f86-1c94-481c-87a4-fb097fec6b70" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>

Data akan langsung diperbarui dan kembali ke halaman utama.
<p align="center">
   <img src="https://github.com/user-attachments/assets/0f59eeac-d7eb-4512-8f17-5d5bd3589613" width="400" style="border:2px solid #ddd; border-radius:10px;">
</p>

5️⃣ Menghapus Reservasi (Delete)

Untuk menghapus reservasi:
- Tekan ikon delete (🗑️) pada item reservasi
  <p align="center">
      <img src="https://github.com/user-attachments/assets/fa35e182-c4a3-431c-b1fe-1ee3417e2640" width="400" style="border:2px solid #ddd; border-radius:10px;">
  </p>
  
Data akan langsung terhapus dari daftar
<p align="center">
   <img src="https://github.com/user-attachments/assets/42ab2cd0-69dd-481d-ac5c-701f692f6fbf" width="400" style="border:2px solid #ddd; border-radius:10px;">
</p>

## 📌 Tampilan Aplikasi Keseluruhan Layar (Full)

**Home Page**

<img width="1919" height="905" alt="image" src="https://github.com/user-attachments/assets/48889c0d-b07e-4230-8a66-abb26d06ead9" />

<img width="1919" height="906" alt="image" src="https://github.com/user-attachments/assets/b21cec19-81ec-426e-b30b-5d78ce39b74c" />

**Tambah Data**

<img width="1916" height="901" alt="image" src="https://github.com/user-attachments/assets/05c3e49f-18b4-42ab-9870-4a10d45d6c4c" />

**Edit Data**

<img width="1919" height="905" alt="image" src="https://github.com/user-attachments/assets/2d95ea99-314c-4a6d-bfda-2f61fb592836" />

### ⚠️ Catatan

- Data reservasi hanya tersimpan sementara.
- Jika aplikasi ditutup atau direstart, data akan hilang.
