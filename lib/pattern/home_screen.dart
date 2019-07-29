import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vmsv/pattern/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  HomeViewModel viewModel;

  HomeScreen({this.viewModel});

  @override
  Widget build(BuildContext context) {
//    var provider = Provider.of<HomeViewModel>(context);

    return StreamBuilder(
      stream: viewModel.viewsStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData)
          return Container(
            color: Color.fromRGBO(250, 250, 250, 1),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          );
        return snapshot.data;
      },
    );
  }
}
