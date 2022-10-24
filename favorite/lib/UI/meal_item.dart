import 'package:favorite/Model/FavorViewModel.dart';
import 'package:favorite/UI/MealDetailScreen.dart';
import 'operation_item.dart';
import 'package:flutter/material.dart';
import 'package:favorite/Model/AWMealModel.dart';

import 'package:provider/provider.dart';
import 'package:favorite/Core/Extension/int_extension.dart';

final cardRadius = 12.px;

class HYMealItem extends StatelessWidget {
  final AwMealModel meal;
  HYMealItem(this.meal);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius)),
        child: Column(
          children: <Widget>[
            buildBasicInfo(context),
            buildOperationInfo()
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(AWDetailScreen.routeName, arguments: meal);
      },
    );
  }

  Widget buildBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRadius),
            topRight: Radius.circular(cardRadius)
          ),
          child: Image.network(meal.imageUrl!, width: double.infinity, height: 250.px, fit: BoxFit.cover,),
        ),
        Positioned(
          right: 10.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px)
            ),
            child: Text(meal.title!, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(5.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          HYOperationItem(Icon(Icons.schedule), "${meal.duration}分钟"),
          HYOperationItem(Icon(Icons.restaurant), "${meal.complexity}"),
          buildFavorItem()
        ],
      ),
    );
  }

  Widget buildFavorItem() {
    return Consumer<FavorViewModel>(
      builder: (ctx, favorVM, child) {
        // 1.判断是否收藏状态
        final iconData = favorVM.isFavor(meal) ? Icons.favorite: Icons.favorite_border;
        final favorColor = favorVM.isFavor(meal) ? Colors.red: Colors.black;
        final title = favorVM.isFavor(meal)? "收藏": "未收藏";
        return GestureDetector(
          child: HYOperationItem(
            Icon(iconData, color: favorColor,),
            title,
            textColor: favorColor
          ),
          onTap: () {
            favorVM.handleMeal(meal);
          },
        );
      },
    );
  }
}
