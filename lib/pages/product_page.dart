import 'package:flutter/material.dart';
import 'package:my_flutter_app/class/product_class.dart';
import 'package:my_flutter_app/repositories/product_repositories.dart';

void main() => runApp(ProductListApp());

class ProductListApp extends StatelessWidget {
  const ProductListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ProductListPage(repository: ProductRepository()),
        ),
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  final ProductRepository repository;
  ProductListPage({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: FutureBuilder<List<Product>>(
        future: repository.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                var product = snapshot.data![index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('Price: \$${product.price}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}