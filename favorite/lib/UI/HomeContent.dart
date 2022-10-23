import 'package:flutter/material.dart';
import 'package:favorite/Model/HomeCategoryModel.dart';
import 'package:favorite/Core/Services/AWJsonParser.dart';
import 'package:favorite/UI/HomeCategoryItem.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HomeCategoryModel>>(
      future: AWJsonParser.getCategoryData(),
      builder: (ctx, snapshot) {
         if (!snapshot.hasData) return CircularProgressIndicator();
         if (snapshot.error != null) return Center(child: Text("请求失败！"),);

         //获取数据
        final categories = snapshot.data!;

        return GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5
          ),

          itemBuilder: (ctx ,index) {
            return  HomeCategoryItem(categories[index]);
          },
        );
      },
    );
  }
}