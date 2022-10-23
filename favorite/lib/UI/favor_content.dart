import 'package:favorite/Model/FavorViewModel.dart';
import 'package:favorite/UI/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:favorite/Core/Extension/int_extension.dart';
class HYFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(
      builder: (ctx, favorVM, child) {
        if (favorVM.favorMeals.length == 0) {
          return Center(
            child: Text("未收藏美食"),
          );
        }

        return ListView.builder(
          itemCount: favorVM.favorMeals.length,
          itemBuilder: (itemCtx, index) {
            return HYMealItem(favorVM.favorMeals[index]);
          }
        );
      },
    );
  }
}
