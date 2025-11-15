# Tugas Praktikum 1: Dasar State dengan Model-View

## 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.

<video controls src="Video WhatsApp 2025-11-15 pukul 17.33.09_cc1ab9c1.mp4" title="Title"></video>

## 2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

Langkah ini membuat "Barrel File" (data_layer.dart) untuk menyatukan (mengekspor) model Plan dan Task. Ini bertujuan untuk membuat proses impor di file lain menjadi lebih ringkas dan bersih (import '../models/data_layer.dart';).

## 3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

Kegunaan: Variabel plan berfungsi sebagai penyimpanan state utama aplikasi, memuat seluruh data tugas (List<Task>).

Konstanta (const): Class Plan dan Task bersifat immutable (tidak dapat diubah). Setiap pembaruan (tambah/edit/centang) memerlukan pembuatan objek Plan yang baru (dengan setState()), bukan memodifikasi objek lama.

## 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

<video controls src="Video WhatsApp 2025-11-15 pukul 17.33.18_8644e42a.mp4" title=""></video>


## 5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

Pada langkah 11 initState() berfungsi untuk bertanggung jawab untuk menginisialisasi sumber daya yang diperlukan, seperti ScrollController, dan mengatur listener untuk menyembunyikan keyboard saat scrolling. Dipanggil hanya sekali saat State pertama kali dibuat.

Sedangkan, dilangkah 13 berfungsi untuk membersihkan (dispose()) sumber daya yang telah dibuat (misalnya ScrollController). Mencegah kebocoran memori dengan memastikan sumber daya tidak terpakai setelah widget dihancurkan. Dipanggil sebelum State dihancurkan.

##
##
##
##
##
##
##
##
##