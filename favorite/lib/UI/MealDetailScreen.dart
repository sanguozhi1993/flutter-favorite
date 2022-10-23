import 'package:favorite/Model/AWMealModel.dart';
import 'package:favorite/Model/FavorViewModel.dart';
import 'package:favorite/UI/detail_floating_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:favorite/UI/detail_content.dart';

import 'detail_content.dart';

class AWDetailScreen extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as AwMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title ?? "标题"),
      ),
      body: AWDetailContent(meal),
      floatingActionButton: HYDetailFloatingButton(meal),
    );
  }
}
