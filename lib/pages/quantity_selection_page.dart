import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/summary_page.dart';

// หน้าเลือกจำนวนสินค้า
class QuantitySelectionPage extends StatelessWidget {
  final String productName;

  QuantitySelectionPage({Key? key, required this.productName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Quantity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) => index + 1).map((quantity) => ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SummaryPage(selectedProduct: productName, quantity: quantity),
              ),
            ),
            child: Text('$quantity'),
          )).toList(),
        ),
      ),
    );
  }
}