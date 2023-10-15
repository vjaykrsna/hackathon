import 'package:flutter/material.dart';
import 'index.dart';

class ProductCard extends StatelessWidget {
  final Productdetail products;
  final String forqr;

  const ProductCard({required this.products, required this.forqr});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Image.asset(
            products.imgUrl,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              '${products.name} (${products.brand})',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              'Price: \₹${products.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QrCode(data: forqr),
                  ),
                );
              },
              icon: const Icon(Icons.qr_code),
              label: const Text('View Details')),
        ],
      ),
    );
  }
}
