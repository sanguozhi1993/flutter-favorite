import 'package:favorite/Model/AWMealModel.dart';
import 'package:flutter/material.dart';

class FavorViewModel extends ChangeNotifier {
  List<AwMealModel> _favorMeals = [];

  List<AwMealModel> get favorMeals {
    return _favorMeals;
  }

  void addMeal(AwMealModel meal) {
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(AwMealModel meal) {
    _favorMeals.remove(meal);
    notifyListeners();
  }

  void handleMeal(AwMealModel meal) {
    if (isFavor(meal)) {
      removeMeal(meal);
    } else {
      addMeal(meal);
    }
  }

  bool isFavor(AwMealModel meal) {
    return _favorMeals.contains(meal);
  }
}