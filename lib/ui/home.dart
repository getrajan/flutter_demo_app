import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facts Mario"),
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){},
          child: Text("Logout"),
        ),
      ),
    );
  }
}
