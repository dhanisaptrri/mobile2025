import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart'; // ✅ perbaikan path

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(item.name),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero Image
            Hero(
              tag: item.name,
              child: Container(
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  child: Image.asset(
                    item.photo,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Produk
                  Text(
                    item.name,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Card Informasi Produk
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          // Harga
                          Row(
                            children: [
                              const Icon(Icons.attach_money, color: Colors.green),
                              const SizedBox(width: 8),
                              const Text('Harga:', style: TextStyle(fontWeight: FontWeight.w500)),
                              const Spacer(),
                              Text(
                                'Rp ${item.price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const Divider(height: 24),

                          // Stok
                          Row(
                            children: [
                              const Icon(Icons.inventory, color: Colors.blue),
                              const SizedBox(width: 8),
                              const Text('Stok tersedia:', style: TextStyle(fontWeight: FontWeight.w500)),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                decoration: BoxDecoration(
                                  color: item.stock > 10
                                      ? Colors.green.shade100
                                      : Colors.orange.shade100,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '${item.stock} unit',
                                  style: TextStyle(
                                    color: item.stock > 10
                                        ? Colors.green.shade700
                                        : Colors.orange.shade700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(height: 24),

                          // Rating
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.orange),
                              const SizedBox(width: 8),
                              const Text('Rating:', style: TextStyle(fontWeight: FontWeight.w500)),
                              const Spacer(),
                              Row(
                                children: [
                                  ...List.generate(5, (index) {
                                    return Icon(
                                      index < item.rating.floor()
                                          ? Icons.star
                                          : index < item.rating
                                              ? Icons.star_half
                                              : Icons.star_border,
                                      color: Colors.orange,
                                      size: 18,
                                    );
                                  }),
                                  const SizedBox(width: 8),
                                  Text('${item.rating}/5',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.orange)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Deskripsi
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.description, color: Colors.purple),
                              const SizedBox(width: 8),
                              Text(
                                'Deskripsi Produk',
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            item.description,
                            style: const TextStyle(fontSize: 16, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Tombol
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart),
                      label: const Text(
                        'Tambah ke Keranjang',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[300],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Dhanisa Putri Mashilfa - 2341720212',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
