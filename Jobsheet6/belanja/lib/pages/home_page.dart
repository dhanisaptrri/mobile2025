import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Chocolate Cake',
      price: 55000,
      photo: 'images/chocolate_cake.jpg',
      stock: 10,
      rating: 4.8,
      description: 'Kue cokelat lembut dengan lapisan ganache manis dan taburan cokelat parut.',
    ),
    Item(
      name: 'Cheesecake',
      price: 60000,
      photo: 'images/cheesecake.jpg',
      stock: 8,
      rating: 4.9,
      description: 'Kue lembut dengan cream cheese premium dan dasar biskuit renyah.',
    ),
    Item(
      name: 'Red Velvet Cake',
      price: 50000,
      photo: 'images/red_valvet.jpg',
      stock: 12,
      rating: 4.7,
      description: 'Kue red velvet klasik dengan krim keju lembut dan rasa khas.',
    ),
    Item(
      name: 'Cupcake',
      price: 15000,
      photo: 'images/cupcake.jpg',
      stock: 30,
      rating: 4.5,
      description: 'Cupcake manis dengan frosting warna-warni dan topping sprinkle lucu.',
    ),
    Item(
      name: 'Donut',
      price: 10000,
      photo: 'images/donut.jpg',
      stock: 25,
      rating: 4.6,
      description: 'Donat empuk dengan berbagai rasa: cokelat, stroberi, dan vanilla.',
    ),
    Item(
      name: 'Brownies',
      price: 30000,
      photo: 'images/brownies.jpg',
      stock: 18,
      rating: 4.9,
      description: 'Brownies cokelat fudgy dengan rasa pekat dan potongan kacang mete.',
    ),
    Item(
      name: 'Macaron',
      price: 35000,
      photo: 'images/macaron.jpg',
      stock: 20,
      rating: 4.7,
      description: 'Kue khas Prancis berwarna-warni dengan isian krim lembut di dalamnya.',
    ),
    Item(
      name: 'Tart Buah',
      price: 45000,
      photo: 'images/fruit_tart.jpg',
      stock: 10,
      rating: 4.8,
      description: 'Tart renyah berisi krim vanilla dan potongan buah segar di atasnya.',
    ),

    Item(
      name: 'Rainbow Cake',
      price: 65000,
      photo: 'images/rainbow_cake.jpg',
      stock: 5,
      rating: 4.9,
      description: 'Kue lapis warna-warni dengan krim buttercream manis dan lezat.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text('Toko Kue Dhanisa - 2341720212'),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 kolom
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.75,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Hero(
                      tag: item.name,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        child: Image.asset(
                          item.photo,
                          fit: BoxFit.cover,
                          height: 120, // ubah tinggi
                          width: 120,  // ubah lebar
                          ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('Rp ${item.price}'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text('${item.rating}'),
                              ],
                            ),
                            Text('Stok: ${item.stock}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          'Dhanisa Putri Mashilfa - 2341720212',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
