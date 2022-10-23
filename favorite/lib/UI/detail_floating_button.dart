import 'package:favorite/Model/AWMealModel.dart';
import 'package:favorite/Model/FavorViewModel.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HYDetailFloatingButton extends StatelessWidget {
  final AwMealModel _meal;
  HYDetailFloatingButton(this._meal);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavorViewModel>(
      builder: (ctx, favorVM, child) {
        // 1.判断是否是收藏状态
        final iconData = favorVM.isFavor(_meal) ? Icons.favorite: Icons.favorite_border;
        final iconColor = favorVM.isFavor(_meal) ? Colors.red: Colors.black;
        return FloatingActionButton(
          child: Icon(iconData, color: iconColor,),
          onPressed: () {
            favorVM.handleMeal(_meal);
          },
        );
      },
    );
  }
}
