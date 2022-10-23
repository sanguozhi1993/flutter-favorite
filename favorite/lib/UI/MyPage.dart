import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  static final routeName = "MyPage";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("我的收藏"),
      ),
      body: Center(
        child: Text("我的收藏"),
      ),
    );
  }
}