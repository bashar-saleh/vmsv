import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  Function sayHello;

  MainView({this.sayHello});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: this.sayHello,
          child: Text("Say Hello"),
        ),
      ),
    );
  }
}
