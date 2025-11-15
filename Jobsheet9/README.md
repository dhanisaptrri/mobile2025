# Praktikum 1: Mengambil Foto dengan Kamera di Flutter

![alt text](<Gambar WhatsApp 2025-11-06 pukul 15.54.11_163da6c2.jpg>)

![alt text](<Gambar WhatsApp 2025-11-06 pukul 15.53.45_b0551c27.jpg>)

# Praktikum 2: Membuat photo filter carousel

![alt text](<Gambar WhatsApp 2025-11-06 pukul 18.30.37_6e9b9b33.jpg>)

![alt text](<Gambar WhatsApp 2025-11-06 pukul 18.30.38_5349e337.jpg>)

![alt text](<Gambar WhatsApp 2025-11-06 pukul 18.30.38_8d08ca93.jpg>)

![alt text](<Gambar WhatsApp 2025-11-06 pukul 18.30.56_423c29c2.jpg>)

![alt text](<Gambar WhatsApp 2025-11-06 pukul 18.30.55_30728f8a.jpg>)

# TUGAS PRAKTIKUM

## 1.  Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!

## 2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya!

![alt text](<Gambar WhatsApp 2025-11-15 pukul 15.51.38_0b93da6b.jpg>)

![alt text](<Gambar WhatsApp 2025-11-15 pukul 15.51.44_30404219.jpg>)

![alt text](<Gambar WhatsApp 2025-11-15 pukul 15.51.45_84aa4869.jpg>)

![alt text](<Gambar WhatsApp 2025-11-15 pukul 15.51.46_bba1ed2e.jpg>)

![alt text](<Gambar WhatsApp 2025-11-15 pukul 15.51.47_f7162a9a.jpg>)


## 3. Jelaskan maksud void async pada praktikum 1?

Penambahan async pada fungsi main() memungkinkan penggunaan kata kunci await di dalamnya.

Fungsi: Untuk memastikan program menunggu hingga tugas asinkron (seperti mengambil data kamera dengan availableCameras()) selesai sebelum melanjutkan ke kode berikutnya (runApp()).

Future<void>: Menandakan fungsi ini akan menyelesaikan tugasnya di masa depan tanpa mengembalikan nilai data spesifik.

## 4. Jelaskan fungsi dari anotasi @immutable dan @override ?

a. @immutable
Fungsi: Memberi tahu Dart analyzer bahwa widget atau kelas tidak akan diubah setelah dibuat (semua variabel harus final).

Tujuan: Mendorong best practice (seperti pada StatelessWidget) dan membantu optimasi kinerja.

b. @override
Fungsi: Menandakan bahwa metode (fungsi) tersebut menimpa atau mengganti implementasi metode dari kelas induk (super class).

Tujuan: Wajib digunakan untuk keamanan kode; Dart akan memberikan error jika Anda salah mengetik nama metode yang ditimpa (misalnya, intSate alih-alih initState).
