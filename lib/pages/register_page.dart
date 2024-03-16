import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/confirmation_page.dart';

void main() {
  runApp(RegisterPageApp());
}

class RegisterPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _email = '';
  int? _age;

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // บันทึกข้อมูลจากฟอร์ม
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => ConfirmationPage()),
      ); // นำทางไปยังหน้ายืนยัน
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: SingleChildScrollView( // ใช้ SingleChildScrollView เพื่อหลีกเลี่ยง overflow เมื่อแป้นพิมพ์ปรากฏ
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                onSaved: (value) => _username = value!,
                validator: (value) => value!.isEmpty ? 'Please enter your username' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onSaved: (value) => _password = value!,
                validator: (value) => value!.isEmpty ? 'Please enter your password' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => _email = value!,
                validator: (value) => value!.contains('@') ? null : 'Please enter a valid email',
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                onSaved: (value) => _age = int.tryParse(value!),
                validator: (value) {
                  final num = int.tryParse(value!);
                  return num != null && num > 0 ? null : 'Please enter a valid age';
                },
              ),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}