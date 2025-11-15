// lib/widget/filtered_picture_screen.dart

import 'dart:io';
import 'package:flutter/material.dart';

// Import widget-widget filter dari Praktikum 2
import 'filter_selector.dart';

// Widget ini menerima path foto (Praktikum 1) dan menerapkan filter (Praktikum 2).
@immutable
class FilteredPictureScreen extends StatefulWidget {
  final String imagePath;

  const FilteredPictureScreen({super.key, required this.imagePath});

  @override
  State<FilteredPictureScreen> createState() => _FilteredPictureScreenState();
}

class _FilteredPictureScreenState extends State<FilteredPictureScreen> {
  // Daftar filter warna dari Praktikum 2
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  // State untuk warna filter yang aktif
  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Foto Anda - NIM Anda')),
      body: Material(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: _buildPhotoWithFilter(), // Foto yang diambil akan di sini
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: _buildFilterSelector(), // Carousel Filter di sini
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, child) {
        // PENGGABUNGAN: Menggunakan Image.file dari Praktikum 1
        // dan Color Blend Mode dari Praktikum 2.
        return Image.file(
          File(widget.imagePath), // Menggunakan path foto yang diambil
          color: color.withOpacity(0.5),
          colorBlendMode: BlendMode.color,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}