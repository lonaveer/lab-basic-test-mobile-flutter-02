import '../class/product_class.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    // ทำการจำลองการเรียกข้อมูล Product จาก API
    return [
      Product(id: '1', name: 'Laptop', price: 1000.0),
      Product(id: '2', name: 'Smartphone', price: 500.0),
    ];
  }
}