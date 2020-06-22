import 'package:flutter/material.dart';
import 'package:project_food/category_item.dart';
import 'package:project_food/fake_data.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      //this is CategoryItem
      //convert category array => CategoryItem array => use map:
      children: FAKE_CATEGORIES
          .map((eachCategory) => CategoryItem(
                category: eachCategory,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 4 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
