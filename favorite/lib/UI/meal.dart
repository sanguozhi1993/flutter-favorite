import 'package:flutter/material.dart';

import 'package:favorite/Model/HomeCategoryModel.dart';

import 'meal_content.dart';

class AWMealScreen extends StatelessWidget {
  static const String routeName = "/meal";

  @override
  Widget build(BuildContext context) {
    // 获取参数
    final category = ModalRoute.of(context)!.settings.arguments as HomeCategoryModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title!),
      ),
      body: HYMealContent(),
    );
  }
}
