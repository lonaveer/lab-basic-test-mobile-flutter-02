import 'package:flutter/material.dart';

// หน้าสรุปรายการสินค้าที่เลือก
class SummaryPage extends StatelessWidget {
  final String selectedProduct;
  final int quantity;

  SummaryPage({required this.selectedProduct, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
      ),
      body: Center(
        child: Text('You selected $quantity $selectedProduct(s)'),
      ),
    );
  }
}