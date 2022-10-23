
import 'package:favorite/Model/HomeCategoryModel.dart';
import 'package:favorite/Model/AWMealModel.dart';
import 'package:favorite/Model/AWMealViewModel.dart';
import 'meal_item.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class HYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as HomeCategoryModel;
    return Selector<AWMealViewModel, List<AwMealModel>>(
      selector: (ctx, mealVM) {
        return mealVM.meals.where((meal) {
          return meal.categories!.contains(category.id);
        }).toList();
      },
      shouldRebuild: (prev, next) => !ListEquality().equals(prev, next),
      builder: (ctx, meals, child) {
        return ListView.builder(
          itemCount: meals.length,
          itemBuilder: (ctx, index) {
            return HYMealItem(meals[index]);
          },
        );
      },
    );
  }
}

//class HYMealContent extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final category = ModalRoute.of(context).settings.arguments as HYCategoryModel;
//    return Consumer<HYMealViewModel>(
//      builder: (ctx, mealVM, child) {
//        final meals = mealVM.meals.where((meal) => meal.categories.contains(category.id)).toList();
//        return ListView.builder(
//          itemCount: meals.length,
//          itemBuilder: (ctx, index) {
//            return ListTile(title: Text(meals[index].title),);
//          }
//        );
//      }
//    );
//  }
//}
