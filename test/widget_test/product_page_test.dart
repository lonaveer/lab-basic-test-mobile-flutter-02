import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_flutter_app/class/product_class.dart';
import 'package:my_flutter_app/pages/product_page.dart';
import 'package:my_flutter_app/repositories/product_repositories.dart';

// // 1. จงรันคำสั่งสร้างไฟล์ mock ของ product_repositories.dart ด้วยคำสั่ง "flutter pub run build_runner build"
// // 2. จากนั้นทำการ import product_repositories_mock.mocks.dart มาไว้ที่การทดสอบนี้
// import 'xxxxx____2.จงเติมคำตอบที่ถูกต้อง_____xxxxx';

void main() {
  group('ProductListPage Tests', () {
    // // สร้าง instance ของ MockProductRepository
    // xxxxx____3.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    // setUp(() {
    //   // ตั้งค่าเริ่มต้นก่อนการทดสอบแต่ละครั้ง
    //   xxxxx____4.จงเติมคำตอบที่ถูกต้อง_____xxxxx
    // });

    // testWidgets('Product List Page displays list of products', (WidgetTester tester) async {
    //   // ตั้งค่า mock ให้ส่งกลับข้อมูล Product ที่ต้องการ , เมื่อเรียก fetchProduct
    //   when(mockProductRepository.fetchProducts()).thenAnswer(
    //     (_) async => [
    //       Product(id: '1', name: 'MacBook', price: 8000.0),
    //       Product(id: '2', name: 'iPhone', price: 7000.0),
    //     ],
    //   );

    //   // สร้าง ProductListPage เพื่อนำไปแสดงผล
    //   await tester.pumpWidget(MaterialApp(home: ProductListPage(repository: mockProductRepository)));

    //   // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    //   await tester.pumpAndSettle();

    //   // ตรวจสอบผลลัพธ์ว่า MacBook ถูกแสดงผล
    //   xxxxx____5.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // ตรวจสอบผลลัพธ์ว่า iPhone ถูกแสดงผล
    //   xxxxx____6.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // ตรวจสอบผลลัพธ์ว่า Price: $8000.0 ถูกแสดงผล
    //   xxxxx____7.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // ตรวจสอบผลลัพธ์ว่า Price: $7000.0 ถูกแสดงผล
    //   expect(find.text('Price: \$7000.0'), xxxxx____8.จงเติมคำตอบที่ถูกต้อง_____xxxxx);
    // });

    // testWidgets('Product List Page shows error message when fetching products fails', (WidgetTester tester) async {
    //   // ตั้งค่า mock ให้ throw Exception('Failed to fetch products') , เมื่อ fetchProducts ถูกเรียก
    //   xxxxx____9.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // สร้าง ProductListPage เพื่อนำไปแสดงผล
    //   xxxxx____10.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    //   xxxxx___11.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // ตรวจสอบว่าข้อความ error ถูกแสดง
    //   expect(find.text('Error: Exception: Failed to fetch products'), xxxxx____12.จงเติมคำตอบที่ถูกต้อง_____xxxxx);
    // });

    // testWidgets('Product List Page displays a CircularProgressIndicator while waiting for products', (WidgetTester tester) async {
    //   // ตั้งค่า mock ให้เป็น Future.value([]) หรือ ฟังก์ชั่นที่จะให้ข้อมูลในอนาคต , เมื่อ fetchProducts ถูกเรียก
    //   xxxxx____13.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // สร้าง ProductListPage เพื่อนำไปแสดงผล
    //   xxxxx____14.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // ตรวจสอบว่า CircularProgressIndicator ถูกแสดง
    //   expect(find.byType(CircularProgressIndicator), xxxxx____15.จงเติมคำตอบที่ถูกต้อง_____xxxxx);
    // });

    // testWidgets('Product List Page displays no products when the list is empty', (WidgetTester tester) async {
    //   // ตั้งค่า mock ให้ส่งกลับ list ว่าง หรือ [] , เมื่อ fetchProducts ถูกเรียก
    //   xxxxx____16.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // สร้าง ProductListPage เพื่อนำไปแสดงผล
    //   xxxxx____17.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    //   xxxxx____18.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    //   // ตรวจสอบว่าไม่มี ListTile ถูกแสดง (ไม่มีสินค้า)
    //   expect(find.byType(ListTile), findsNothing);
    // });
  });
}