import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Fungsi pembuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Bagian judul
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Banda Neira',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'kepulauan Banda, Maluku, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    // Warna utama
    Color color = Theme.of(context).primaryColor;

    // Bagian tombol
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Bagian teks deskripsi
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Banda Neira adalah sebuah pulau di Kepulauan Banda, Maluku, yang terkenal karena sejarahnya sebagai pusat perdagangan pala dan fuli, serta keindahan alamnya seperti pantai dan terumbu karang.'
        'Pulau ini juga kaya akan situs bersejarah, termasuk benteng-benteng peninggalan kolonial Belanda seperti Benteng Belgica dan rumah-rumah tempat para pejuang kemerdekaan seperti Hatta dan Syahrir pernah diasingkan.'
        'Dhaniasa Putri Mashilfa - 2341720212',
        softWrap: true,
      ),
    );

    // Struktur utama aplikasi
    return MaterialApp(
      title: 'Flutter layout: Dhanisa Putri Mashilfa - 2341720212',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/unduhan.jpeg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
