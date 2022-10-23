import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:favorite/Model/HomeCategoryModel.dart';
class AWJsonParser {
  static Future<List<HomeCategoryModel>> getCategoryData() async {

    //加载jsonString
    final jsonString =  await rootBundle.loadString("assets/json/category.json");

    //转换为json
    final result = json.decode(jsonString);

    //转化为model
    final resultList = result["category"];
    List<HomeCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(HomeCategoryModel.fromJson(json));
    }
    return categories;
  }
}