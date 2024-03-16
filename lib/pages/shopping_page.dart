import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShopPage(),
    );
  }
}

class ShopPage extends StatelessWidget {
  final List<String> products = ['Laptop', 'Smartphone'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Product'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SummaryPage(selectedProduct: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class SummaryPage extends StatelessWidget {
  final String selectedProduct;

  SummaryPage({required this.selectedProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
      ),
      body: Center(
        child: Text('You selected: $selectedProduct'),
      ),
    );
  }
}