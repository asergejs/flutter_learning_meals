import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import './models/category.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeals'),),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map((categoryData) =>
                CategoryItem(categoryData.title, categoryData.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
