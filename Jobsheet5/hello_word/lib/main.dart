import 'basic_widgets/text_widget.dart';
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/loading_cupertino.dart';
import 'basic_widgets/fab_widget.dart'; // Sudah disesuaikan ikonnya
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Menonaktifkan debug banner untuk mencocokkan tampilan teman Anda
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dhanisa Putri Demo Home Page'), // Judul disamakan
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

          ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // Menampilkan pesan yang dinamis
        content: Text('Nilai ditambah! Sekarang: $_counter'),
        duration: const Duration(milliseconds: 2000), // Tampilkan sebentar
        backgroundColor: Colors.blue,
      ),
    );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Mengelompokkan semua widget di tengah
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[
            const MyImageWidget(),
            const MyTextWidget(),
            
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
           
            LoadingCupertino(), 
          ],
        ),
      ),
      
      // FLOATING ACTION BUTTON UTAMA (Ikon Jempol, seperti contoh)
      floatingActionButton: FabWidget(
        // Meneruskan fungsi increment ke FAB
        onPressedCallback: _incrementCounter, 
      ),
      
    );
  }
}