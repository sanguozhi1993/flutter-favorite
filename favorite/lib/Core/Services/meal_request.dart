import 'package:dio/dio.dart';
import 'package:favorite/Model/AWMealModel.dart';

import 'http_request.dart';

class AWMealRequest {
  static Future<List<AwMealModel>> getMealData() async {
    //发送网络请求
    final url = "/meal.json";
    final result = await HttpRequest.request(url, params: Map<String,String>(),inter:Interceptor());

    // 2.json转modal
    final mealArray = result["meal"];
    List<AwMealModel> meals = [];
    for (var json in mealArray) {
      meals.add(AwMealModel.fromJson(json));
    }

    print(meals);
    return meals;
  }
}