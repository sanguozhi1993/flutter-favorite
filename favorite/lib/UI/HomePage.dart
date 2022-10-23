import 'package:flutter/material.dart';
import 'package:favorite/UI/HomeContent.dart';

class HomePage extends StatelessWidget {
  static final routeName = "HomePage";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: HomeContent()
    );
  }
}