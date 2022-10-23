import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:favorite/Core/Services/meal_request.dart';
import 'package:favorite/Model/AWMealModel.dart';

class AWMealViewModel extends ChangeNotifier {
   List<AwMealModel> _meals = [];

   List<AwMealModel> get meals {
      return _meals;
   }

   AWMealViewModel() {
      AWMealRequest.getMealData().then((res) {
         _meals = res;
         notifyListeners();
      });
   }

}