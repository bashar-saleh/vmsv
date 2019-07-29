import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vmsv/pattern/home_screen.dart';
import 'package:vmsv/pattern/home_viewmodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // Initiate HomeViewModel
    HomeViewModel homeViewModel = HomeViewModel();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        builder: (context) => homeViewModel,
        child: HomeScreen(viewModel: homeViewModel),
      ),
    );
  }
}
