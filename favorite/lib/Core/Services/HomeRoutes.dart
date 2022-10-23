import 'package:favorite/UI/HomePage.dart';
import 'package:favorite/UI/HomePageDetail.dart';
import 'package:favorite/UI/MealListScreen.dart';
import 'package:favorite/UI/MyPage.dart';
import 'package:favorite/UI/MealDetailScreen.dart';
import 'package:favorite/UI/favor.dart';
import 'package:flutter/material.dart';
import 'package:favorite/UI/meal.dart';

class HomeRoutes {
  static  Map<String, WidgetBuilder> routes = {
    HomePage.routeName: (ctx) => HomePage(),
    MyPage.routeName: (ctx) => MyPage(),
    HomePageDetail.routeName: (ctx) => HomePageDetail(),
    AWDetailScreen.routeName: (ctx) => AWDetailScreen(),
    MealListScreen.routeName: (ctx) => MealListScreen(),
    HYFavorScreen.routenName: (ctx) => HYFavorScreen(),
    AWMealScreen.routeName: (ctx) => AWMealScreen()
  };
}