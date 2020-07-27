import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo/ui/login/login_page.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            OutlineButton(
              onPressed: (){},
              borderSide: BorderSide(
                  color: Colors.pink
              ),
              child: TextFormField(
                controller: _nameController,
                decoration:
                InputDecoration(hintText: "Full Name", icon: Icon(Icons.person_outline)),
                keyboardType: TextInputType.text,
                autovalidate: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: OutlineButton(
                onPressed: (){},
                borderSide: BorderSide(
                    color: Colors.pink
                ),
                child: TextFormField(
                  controller: _emailController,
                  decoration:
                  InputDecoration(hintText: "Email", icon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                  autovalidate: true,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: OutlineButton(
                onPressed: (){},
                borderSide: BorderSide(
                    color: Colors.pink
                ),
                child: TextFormField(
                  controller: _passwordController,
                  decoration:
                  InputDecoration(hintText: "Password", icon: Icon(Icons.lock)),
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
                  "Register",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Loginpage()));
                  },
                  child: Text("Already Have Account",style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.w600),)),
            )
          ],
        ),
      ),
    );
  }
}
