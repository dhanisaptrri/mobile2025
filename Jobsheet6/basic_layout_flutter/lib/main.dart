import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhanisa Putri Mashilfa - 2341720212',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const LayoutHomePage(),
    );
  }
}

class LayoutHomePage extends StatelessWidget {
  const LayoutHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Layout Widgets Demo'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          SectionTitle(title: 'Container Example'),
          ContainerExample(),

          SizedBox(height: 24),
          SectionTitle(title: 'GridView Example'),
          GridViewExample(),

          SizedBox(height: 24),
          SectionTitle(title: 'Stack Example'),
          StackExample(),

          SizedBox(height: 24),
          SectionTitle(title: 'Card & ListTile Example'),
          CardExample(),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

// 1. Container Example
class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  Widget _buildDecoratedImage(String imageName) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image.asset('images/$imageName', fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildImageRow(List<String> imageList) {
    return Row(
      children: imageList.map((img) => _buildDecoratedImage(img)).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFFEEEEEE)),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          _buildImageRow(['unduhan.jpeg', 'Pavlovadream.jpeg']),
          _buildImageRow(['pvl.jpeg', 'ღ.jpeg']),
        ],
      ),
    );
  }
}

// 2. GridView Example
class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.extent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: List.generate(
          6,
          (i) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage('images/pavlova.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 3. Stack Example
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/pavlova.jpeg'),
            radius: 80,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.black54),
            padding: const EdgeInsets.all(6),
            child: const Text(
              'Pavlova',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

// 4. Card + ListTile Example
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('images/ღ.jpeg', width: 50),
              title: const Text('1625 Main Street'),
              subtitle: const Text('My City, CA 99984'),
              trailing: const Icon(Icons.map),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text('(408) 555-1212'),
            ),
            const ListTile(
              leading: Icon(Icons.mail, color: Colors.blue),
              title: Text('example@email.com'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// // Widget utama aplikasi
// class RecipeLayout extends StatelessWidget {
//   const RecipeLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Recipe Layout',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Strawberry Pavlova'),
//         ),
//         body: Center(
//           // Row Utama: memiliki 2 turunan (children): Column (kiri) dan Image (kanan)
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center, // Pusatkan Row secara horizontal
//             crossAxisAlignment: CrossAxisAlignment.start, // Ratakan di bagian atas
//             children: <Widget>[
//               // Kolom Kiri: Informasi Teks
//               Container(
//                 width: 300, // Lebar kolom kiri
//                 padding: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.cyan, width: 2), // Garis biru muda
//                 ),
//                 // Column (Kolom) Kiri
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min, // Ambil ruang minimum vertikal
//                   crossAxisAlignment: CrossAxisAlignment.start, // Ratakan kiri
//                   children: <Widget>[
//                     // 1. Judul
//                     const Text(
//                       'Strawberry Pavlova',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                     const SizedBox(height: 8),

//                     // 2. Deskripsi
//                     const Text(
//                       'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
//                       textAlign: TextAlign.justify,
//                     ),
//                     const SizedBox(height: 16),

//                     // 3. Rating & Jumlah Review
//                     Row(
//                       children: <Widget>[
//                         Row(
//                           children: List.generate(5, (index) {
//                             return const Icon(
//                               Icons.star,
//                               color: Colors.red,
//                               size: 18,
//                             );
//                           }),
//                         ),
//                         const SizedBox(width: 8),
//                         const Text(
//                           '170 Reviews',
//                           style: TextStyle(
//                             color: Colors.red,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),

//                     // 4. Info PREP, COOK, FEEDS
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         vertical: 8.0,
//                         horizontal: 16.0,
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.red, width: 1),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: <Widget>[
//                           _buildInfoColumn(Icons.schedule, 'PREP:', '25 min'),
//                           _buildInfoColumn(Icons.timer, 'COOK:', '1 hr'),
//                           _buildInfoColumn(Icons.person, 'FEEDS:', '4-6'),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),

//               // Gambar Kanan
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.red, width: 2),
//                   ),
//                   child: Image.asset(
//                     'images/pavlova.jpeg', // gunakan Image.asset karena gambar lokal
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Fungsi pembantu untuk membuat kolom informasi (PREP, COOK, FEEDS)
//   static Widget _buildInfoColumn(IconData icon, String label, String value) {
//     return Column(
//       children: <Widget>[
//         Icon(icon, color: Colors.red, size: 24.0),
//         Text(
//           label,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//         Text(value),
//       ],
//     );
//   }
// }

// // Fungsi utama menjalankan aplikasi
// void main() {
//   runApp(const RecipeLayout());
// }
