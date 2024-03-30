import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/pages/register_page.dart';

void main() {
  testWidgets('Register form Test with navigation to confirmation page', (WidgetTester tester) async {
    // // ใช้ tester.pumpWidget เพื่อเรียก MaterialApp(home: RegisterPage()) มารันบน App
    // await tester.pumpWidget(xxxxx____1.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ทำการกรอก 'username' ลงใน TextFormField อันแรก (username)
    // await tester.enterText(find.byType(TextFormField).at(0), xxxxx____2.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ทำการกรอก 'password123' ลงใน TextFormField อันที่สอง (password)
    // await tester.enterText(find.byType(TextFormField).at(1), xxxxx____3.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ทำการกรอก 'email@example.com' ลงใน TextFormField อันที่สาม (email)
    // await tester.enterText(find.byType(TextFormField).at(2), xxxxx____4.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ทำการกรอก '21' ลงใน TextFormField อันที่สี่ (age)
    // await tester.enterText(find.byType(TextFormField).at(3), xxxxx____5.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ส่งฟอร์ม (ค้นหาปุ่มชนิด ElevatedButton และทำการกดปุ่มเพื่อส่งฟอร์ม)
    // await tester.tap(find.byType(xxxxx____6.จงเติมคำตอบที่ถูกต้อง_____xxxxx));

    // // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    // xxxxx____7.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    // // ตรวจสอบว่าหน้ายืนยันถูกแสดงพร้อมข้อความที่ถูกต้อง , ด้วยการค้นหาคำว่า 'Registration Complete'
    // expect(find.text('Registration Complete'), xxxxx____8.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ตรวจสอบว่าหน้ายืนยันถูกแสดงพร้อมข้อความที่ถูกต้อง , ด้วยการค้นหาคำว่า 'Thank you for registering!'
    // expect(find.text(xxxxx____9.จงเติมคำตอบที่ถูกต้อง_____xxxxx), findsOneWidget);

    //-------------------------------------------------------------------//
    //-------------------------------------------------------------------//

    // // ตรวจสอบการย้อนกลับ (Icons.arrow_back)
    // await tester.tap(find.byIcon(xxxxx____10.จงเติมคำตอบที่ถูกต้อง_____xxxxx));

    // // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    // xxxxx____11.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    // // ตรวจสอบว่าได้ย้อนกลับไปหน้าลงทะเบียน , โดยการค้นหาคำว่า 'Register'
    // expect(find.text('Register'), xxxxx____12.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    //-------------------------------------------------------------------//
    //-------------------------------------------------------------------//

    // // ตัวอย่างการกรอกข้อมูลที่ไม่ถูกต้อง
    // await tester.enterText(find.byType(TextFormField).at(0), '');
    // await tester.enterText(find.byType(TextFormField).at(1), '');
    // await tester.enterText(find.byType(TextFormField).at(2), 'notanemail');
    // await tester.enterText(find.byType(TextFormField).at(3), '-1');

    // // ส่งฟอร์ม (ค้นหาปุ่มชนิด ElevatedButton และทำการกดปุ่มเพื่อส่งฟอร์ม)
    // await tester.tap(find.byType(xxxxx____13.จงเติมคำตอบที่ถูกต้อง_____xxxxx));

    // // รอการแสดงผล Widget + รอ Animation ให้ทำงานเสร็จสิ้น
    // xxxxx____14.จงเติมคำตอบที่ถูกต้อง_____xxxxx

    // // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter your username'
    // expect(find.text(xxxxx____15.จงเติมคำตอบที่ถูกต้อง_____xxxxx), findsOneWidget);

    // // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter your password'
    // expect(find.text('Please enter your password'), xxxxx____16.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter a valid email'
    // expect(xxxxx____17.จงเติมคำตอบที่ถูกต้อง_____xxxxx);

    // // ตรวจสอบข้อความ error ที่แสดง , โดยการค้นหาคำว่า 'Please enter a valid age'
    // expect(xxxxx____18.จงเติมคำตอบที่ถูกต้อง_____xxxxx);
  });
}