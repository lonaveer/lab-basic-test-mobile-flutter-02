import 'package:flutter/material.dart';
import 'package:my_flutter_app/class/product_class.dart';
import 'package:my_flutter_app/pages/quantity_selection_page.dart';
import 'package:my_flutter_app/pages/summary_page.dart';

void main() {
  runApp(ShoppingApp2());
}

class ShoppingApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  final List<Product> products = [
    Product(id: '1', name: 'Laptop', price: 1000.0),
    Product(id: '2', name: 'Smartphone', price: 500.0),
  ];

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
            title: Text(products[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuantitySelectionPage(productName: products[index].name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}