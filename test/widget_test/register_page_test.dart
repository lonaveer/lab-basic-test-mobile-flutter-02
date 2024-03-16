import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/pages/register_page.dart';

void main() {
  testWidgets('Register form Test with navigation to confirmation page', (WidgetTester tester) async {
    // ใช้ tester.pumpWidget เพื่อเรียก MaterialApp(home: RegisterPage()) มารันบน App
    await tester.pumpWidget(MaterialApp(home: RegisterPage()));

    // ทำการกรอก 'username' ลงใน TextFormField อันแรก (username)
    await tester.enterText(find.byType(TextFormField).at(0), 'username');

    // ทำการกรอก 'password123' ลงใน TextFormField อันที่สอง (password)
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');

    // ทำการกรอก 'email@example.com' ลงใน TextFormField อันที่สาม (email)
    await tester.enterText(find.byType(TextFormField).at(2), 'email@example.com');

    // ทำการกรอก '21' ลงใน TextFormField อันที่สี่ (age)
    await tester.enterText(find.byType(TextFormField).at(3), '21');

    // ส่งฟอร์ม
    await tester.tap(find.byType(ElevatedButton));

    // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    await tester.pumpAndSettle();

    // ตรวจสอบว่าหน้ายืนยันถูกแสดงพร้อมข้อความที่ถูกต้อง , ด้วยการค้นหาคำว่า 'Registration Complete'
    expect(find.text('Registration Complete'), findsOneWidget);

    // ตรวจสอบว่าหน้ายืนยันถูกแสดงพร้อมข้อความที่ถูกต้อง , ด้วยการค้นหาคำว่า 'Thank you for registering!'
    expect(find.text('Thank you for registering!'), findsOneWidget);

    // ตรวจสอบการย้อนกลับ
    await tester.tap(find.byIcon(Icons.arrow_back));

    // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    await tester.pumpAndSettle();

    // ตรวจสอบว่าได้ย้อนกลับไปหน้าลงทะเบียน , โดยการค้นหาคำว่า 'Register'
    expect(find.text('Register'), findsOneWidget);

    // ตัวอย่างการกรอกข้อมูลที่ไม่ถูกต้อง
    await tester.enterText(find.byType(TextFormField).at(0), '');
    await tester.enterText(find.byType(TextFormField).at(1), '');
    await tester.enterText(find.byType(TextFormField).at(2), 'notanemail');
    await tester.enterText(find.byType(TextFormField).at(3), '-1');

    // ส่งฟอร์ม
    await tester.tap(find.byType(ElevatedButton));

    // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    await tester.pumpAndSettle();

    // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter your username'
    expect(find.text('Please enter your username'), findsOneWidget);

    // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter your password'
    expect(find.text('Please enter your password'), findsOneWidget);

    // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter a valid email'
    expect(find.text('Please enter a valid email'), findsOneWidget);

    // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter a valid age'
    expect(find.text('Please enter a valid age'), findsOneWidget);
  });
}