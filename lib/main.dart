import 'package:flutter/material.dart';
import 'package:flutter_app_demo/ui/login/login_form.dart';
import 'package:flutter_app_demo/ui/login/login_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginpage(),
    );
  }
}

