import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/ui/login/login_form.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 50.0),
                  child: Image.asset('images/demo.png')),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Login Into Your Account",
                  style: TextStyle(fontSize: 20.0, color: Colors.green,fontWeight: FontWeight.bold),
                ),
              ),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
