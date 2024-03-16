import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/pages/shopping_page_2.dart';

void main() {
  testWidgets('User can select a product and choose quantity 1, then see summary', (WidgetTester tester) async {
    // ใช้ tester.pumpWidget เพื่อเรียก ShoppingApp2() มารันบน App
    await tester.pumpWidget(ShoppingApp2());

    // เลือกสินค้า 'Laptop'
    await tester.tap(find.text('Laptop'));
    await tester.pumpAndSettle();

    // เลือกจำนวน '1'
    await tester.tap(find.text('1'));
    await tester.pumpAndSettle();

    // ตรวจสอบหน้าสรุปว่าแสดงข้อมูลถูกต้อง
    expect(find.text('You selected 1 Laptop(s)'), findsOneWidget);
  });

  testWidgets('User can select another product and choose quantity 2, then see summary', (WidgetTester tester) async {
    // ใช้ tester.pumpWidget เพื่อเรียก ShoppingApp2() มารันบน App
    await tester.pumpWidget(ShoppingApp2());

    // ล้างการเลือกก่อนหน้าแล้วเลือกสินค้า 'Smartphone'
    await tester.tap(find.text('Smartphone'));
    await tester.pumpAndSettle();

    // เลือกจำนวน '2'
    await tester.tap(find.text('2'));
    await tester.pumpAndSettle();

    // ตรวจสอบหน้าสรุปว่าแสดงข้อมูลถูกต้อง
    expect(find.text('You selected 2 Smartphone(s)'), findsOneWidget);
  });

  testWidgets('User can navigate back from SummaryPage to select a new product', (WidgetTester tester) async {
    // ใช้ tester.pumpWidget เพื่อเรียก ShoppingApp2() มารันบน App
    await tester.pumpWidget(ShoppingApp2());

    // เลือกสินค้า 'Laptop'
    await tester.tap(find.text('Laptop'));
    await tester.pumpAndSettle();

    // เลือกจำนวน '2'
    await tester.tap(find.text('2'));
    await tester.pumpAndSettle();

    // ตรวจสอบหน้าสรุป
    expect(find.text('You selected 2 Laptop(s)'), findsOneWidget);

    // ย้อนกลับไปยังหน้าเลือกจำนวนสินค้า
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // ย้อนกลับไปยังหน้ารายการสินค้า
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // ตรวจสอบว่าได้กลับมายังหน้ารายการสินค้าแล้วหรือไม่ โดยการค้นหาคำว่า 'Select a Product'
    expect(find.text('Select a Product'), findsOneWidget);

    // เลือกสินค้า 'Smartphone'
    await tester.tap(find.text('Smartphone'));
    await tester.pumpAndSettle();

    // เลือกจำนวน '3'
    await tester.tap(find.text('3'));
    await tester.pumpAndSettle();

    // ตรวจสอบหน้าสรุปว่าแสดงข้อมูลถูกต้อง
    expect(find.text('You selected 3 Smartphone(s)'), findsOneWidget);

    // ย้อนกลับไปยังหน้าเลือกจำนวนสินค้า
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // เลือกจำนวน '1'
    await tester.tap(find.text('1'));
    await tester.pumpAndSettle();

    // ตรวจสอบหน้าสรุปว่าแสดงข้อมูลถูกต้อง
    expect(find.text('You selected 1 Smartphone(s)'), findsOneWidget);

    // ย้อนกลับไปยังหน้าเลือกจำนวนสินค้า
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // ย้อนกลับไปยังหน้ารายการสินค้า
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // ตรวจสอบว่าได้กลับมายังหน้ารายการสินค้าแล้วหรือไม่ โดยการค้นหาคำว่า 'Select a Product'
    expect(find.text('Select a Product'), findsOneWidget);
  });
}