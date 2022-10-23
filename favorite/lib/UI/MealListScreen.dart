
import 'dart:ui';
import 'package:favorite/Model/AWMealModel.dart';
import 'package:favorite/Model/AWMealViewModel.dart';
import 'package:favorite/Model/HomeCategoryModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MealListScreen extends StatelessWidget {
  static const String routeName = "/MealListScreen";
  @override
  Widget build(BuildContext context) {
    final HomeCategoryModel _category = ModalRoute.of(context)?.settings.arguments as HomeCategoryModel;
    return Consumer<AWMealViewModel> (
      builder: (ctx, vm, child) {

        final List<AwMealModel> meals = vm.meals.where((element) => element.categories?.contains(_category.id ?? "") ?? false).toList();
        return Scaffold(
          appBar: AppBar(
            title: Text(_category.title ?? "")
          ),

          body: ListView.builder(
              itemCount: meals.length,
              itemBuilder: (ctx, index) {
                final AwMealModel oneMeal = meals[index];
            return Card(
              margin: EdgeInsets.all(8),
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                        child: Image.network(oneMeal.imageUrl ?? "", width: double.infinity,height: 250,fit: BoxFit.cover),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          width: 200,
                          padding: EdgeInsets.all(10),
                          child: Text(oneMeal.title ?? "", style: TextStyle(
                            color: Colors.white
                          )),
                        ),
                      )

                    ],
                  ),
                  Text("测试测试-----")
                ],
              ),
            );
          }),
        );
      },
    );
  }
}