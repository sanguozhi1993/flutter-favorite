import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageDetail extends StatelessWidget {
  static final routeName = "HomePageDetail";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页面"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text("我是详情页面！"),
      ),
    );
  }
}