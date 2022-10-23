import 'package:favorite/Model/HomeCategoryModel.dart';
import 'package:favorite/UI/MealDetailScreen.dart';
import 'package:flutter/material.dart';

import 'package:favorite/UI/meal.dart';

class HomeCategoryItem extends StatelessWidget {
  //定义构造方法
  final HomeCategoryModel _category;
  HomeCategoryItem(this._category);

  @override
  Widget build(BuildContext context) {
    int color = int.parse(_category.color ?? "000000",radix: 16);
    final bgColor = Color(color | 0xFF000000);

    // TODO: implement build
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  colors: [
                    bgColor.withOpacity(.5),
                    bgColor
                  ]
              )
          ),
          alignment: Alignment.center,
          child: Text(
              _category.title ?? "default",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black
              )
          )
      ),
      onTap: (){
        Navigator.of(context).pushNamed(AWMealScreen.routeName,arguments: _category);
      },
    );
  }
}