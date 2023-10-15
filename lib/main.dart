import 'package:flutter/material.dart';
import 'index.dart';

void main() => runApp(MaterialApp(
      title: 'mycart',
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // final List<Productdetail> products = productslist;
  final List<Productdetail> products = [
  Productdetail(category: 'Mobile', brand: 'Apple', price: 50000, imgUrl: 'assets/iphone.webp', description: '\n     • 128 GBROM\n     • 15.49 cm (6.1 inch) Super Retina XDR Display\n    • 12MP+ 12MPl 12MP Front Camera\n     • A15 Bionic Chip, 6 Core Processor Processor\n    • 1 Year Warranty for Phone and 6 Months Warranty for In-Box Accessories', name: 'iPhone 14', sku: 999, slug: 'foo'),
  Productdetail(category: 'Laptop', brand: 'Dell', price: 175999, imgUrl: 'assets/laptop.webp', description: '\n     • Intel Evo platform feat 1 lth Gen Intel Core i5 processor\n     • Intel Core i5 Processor (11th Gen)\n     • 8 GB LPDDR4X RAM\n     • 64 bit Windows 10 Operating System\n     • 512 GBSSD\n     • 33.78 cm (13.3 inch) Display\n     • 1 Year Onsite Warranty', name: 'XPS Core i7', sku: 888, slug: 'xxx'),
  Productdetail(category: 'Beverage', brand: 'Coca-Cola', price: 56, imgUrl: 'assets/coca.jpg', description: '\n     Beverage\n     60/liter\n     Certified by me', name: 'Coca-Cola', sku: 0000, slug: 'ccc')
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Page'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          String txtqr() {
            return 'Name: ${products[index].name}\nBrand: ${products[index].brand}\nPrice: ${products[index].price}\nSKU: ${products[index].sku}\nSlug: ${products[index].slug}\nDescription: ${products[index].description}';
          }

          // For each item in the list, create a card
          return ProductCard(
            products: products[index],
            forqr: txtqr(),
          );
        },
      ),
    );
  }
}
