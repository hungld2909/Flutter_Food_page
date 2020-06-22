import 'package:flutter/material.dart';
import 'package:project_food/category_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'Itim',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          title: TextStyle(
            color: Colors.white,
            fontSize: 28,fontFamily: 'Sunshiney'
          )
        )
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Food\'s category '),
          ),
          body: SafeArea(child: CategoriesPage())),
    );
  }
}
