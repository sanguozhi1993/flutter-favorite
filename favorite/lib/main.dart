
import 'package:favorite/Model/AWMealViewModel.dart';
import 'package:favorite/Model/FavorViewModel.dart';
import 'package:favorite/UI/favor.dart';
import 'package:flutter/material.dart';
import 'package:favorite/UI/HomePage.dart';
import 'package:favorite/Core/Services/HomeRoutes.dart';
import 'package:favorite/Core/Services/meal_request.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:favorite/Core/Extension/size_fit.dart';
void main () {
  HYSizeFit.initialize();
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (ctx) => AWMealViewModel()),
          ChangeNotifierProvider(create: (ctx) => FavorViewModel()),
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "test",
      home: InitialPage(title: "美食广场"),
      routes: HomeRoutes.routes,
    );
  }
}
class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage( {Key? key, required this.title}) : super(key:key);
  @override
  State<InitialPage> createState() =>InitialPageState();
}
class InitialPageState extends State<InitialPage> {
   int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child:IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            HomePage(),
            HYFavorScreen()
          ],
        )
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "我的",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "收藏",
            icon: Icon(Icons.favorite)
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ),

    );
  }
}