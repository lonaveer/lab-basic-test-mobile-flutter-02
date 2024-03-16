import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/pages/shopping_page.dart';

void main() {
  testWidgets('User can select a product and see it on summary page', (WidgetTester tester) async {
    // ทำการใช้ pumpWidget เพื่อเรียก ShoppingApp() มาใช้งาน
    await tester.pumpWidget(ShoppingApp());

    // ตรวจสอบว่าหน้าแอปแสดงข้อความ 'Select a Product'
    expect(find.text('Select a Product'), findsOneWidget);

    // จำลองการแตะที่สินค้า 'Laptop'
    await tester.tap(find.text('Laptop'));
    await tester.pumpAndSettle(); // รอจนกว่าการเปลี่ยนหน้าเสร็จสิ้น

    // ตรวจสอบว่าหน้าสรุปแสดงข้อความที่ถูกต้อง
    expect(find.text('You selected: Laptop'), findsOneWidget);

    // กลับไปยังหน้ารายการสินค้าและเลือกสินค้าอีกชิ้น
    Navigator.of(tester.element(find.text('You selected: Laptop'))).pop();
    await tester.pumpAndSettle(); // รอการเปลี่ยนแปลง UI

    // ตรวจสอบว่าเราอยู่ที่หน้ารายการสินค้าอีกครั้ง
    expect(find.text('Select a Product'), findsOneWidget);

    // จำลองการแตะที่สินค้า 'Smartphone'
    await tester.tap(find.text('Smartphone'));
    await tester.pumpAndSettle();

    // ตรวจสอบว่าหน้าสรุปแสดงข้อความที่ถูกต้องสำหรับสินค้าที่สอง
    expect(find.text('You selected: Smartphone'), findsOneWidget);
  });
}