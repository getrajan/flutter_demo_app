import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/ui/register/register_page.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            OutlineButton(
              onPressed: () {},
              borderSide: BorderSide(color: Colors.pink),
              child: TextFormField(
                controller: _emailController,
                decoration:
                    InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
                keyboardType: TextInputType.emailAddress,
                autovalidate: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(color: Colors.pink),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      hintText: "Password", icon: Icon(Icons.lock)),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    "Register Your Account",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
