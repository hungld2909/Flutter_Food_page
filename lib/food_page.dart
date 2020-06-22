import 'package:flutter/material.dart';
import 'package:project_food/models/category.dart';
class FoodPage extends StatelessWidget {
   final Category category;

  const FoodPage({Key key, this.category}) : super(key: key);
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food ${category.content}'),
      ),
      body: Container(
        child: Center(child: Text("Food Page")),
      ),
    );
  }
}