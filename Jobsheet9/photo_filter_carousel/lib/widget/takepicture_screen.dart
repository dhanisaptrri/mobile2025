import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
// Ganti impor lama ke DisplayPictureScreen dengan impor ke layar berfilter baru
import 'filtered_picture_screen.dart'; // Pastikan path ini benar (e.g., '../widget/filtered_picture_screen.dart' jika file ini di folder 'screen')

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({super.key, required this.camera});

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a Picture - 2341720212')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            // GANTI NAVIGASI: Arahkan ke FilteredPictureScreen
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FilteredPictureScreen( // <-- Widget Baru
                  imagePath: image.path,
                ),
              ),
            );
          } catch (e) {
            print('Terjadi error saat mengambil gambar: $e');
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}