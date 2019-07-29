import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MsgView extends StatelessWidget {
  String msg;

  MsgView({this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(this.msg),
      ),
    );
  }
}
