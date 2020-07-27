import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/ui/login/login_form.dart';
import 'package:flutter_app_demo/ui/register/register_form.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 50.0),
                child: Image.asset('images/demo.png')),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(
                "Register Your Account",
                style: TextStyle(fontSize: 20.0, color: Colors.green,fontWeight: FontWeight.bold),
              ),
            ),
            RegisterForm(),
          ],
        ),
      ),
    );
  }
}
