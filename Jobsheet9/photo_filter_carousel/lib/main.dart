
// lib/main.dart

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
// Import TakePictureScreen dari folder widget
import 'widget/takepicture_screen.dart'; 

// Variabel global untuk menyimpan daftar kamera yang tersedia.
// Meskipun tidak digunakan langsung di runApp, ini diperlukan oleh availableCameras().
List<CameraDescription> cameras = [];

Future<void> main() async {
  // Pastikan binding sudah diinisialisasi sebelum memanggil plugin kamera
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Dapatkan daftar kamera di perangkat
    cameras = await availableCameras();
  } on CameraException catch (e) {
    // Tangani error jika tidak ada kamera atau izin ditolak
    print('Error: ${e.code}\n${e.description}');
    // Jika ada error, daftar kamera mungkin kosong.
  }

  // Pilih kamera pertama (biasanya kamera belakang)
  // Pastikan daftar kamera tidak kosong sebelum mengakses elemen 'first'.
  final firstCamera = cameras.isNotEmpty ? cameras.first : null;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // Mulai aplikasi dengan TakePictureScreen, yang memerlukan CameraDescription
      home: firstCamera != null
          ? TakePictureScreen(
              camera: firstCamera,
            )
          : const Center(
              child: Text(
                'Tidak ada kamera yang tersedia atau izin ditolak.',
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white),
              ),
            ),
    ),
  );
}