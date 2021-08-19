import 'package:flutter/material.dart';
import '../Wigets/gridviewWidget.dart';
import '../classproviders/categories.dart';
import '../Wigets/appbar.dart';
import '../Wigets/categories_container.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "./homepage";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appbar(),
          categories_container(),
        ],
      ),
    );
  }
}
