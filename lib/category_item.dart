import 'package:flutter/material.dart';
import 'food_page.dart';
import 'models/category.dart';
class CategoryItem extends StatelessWidget {
  //1 categoryItem - 1 categoryObject
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    return InkWell(
      onTap: (){
        //you can send parameters using constructor
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FoodPage(category: this.category,)));
        // Are there another way to send parameters ? yes !, use RouteNames
        // Navigator.pushNamed(context, '/FoodPage',arguments: {'category': category});
      },
      splashColor: Colors.deepPurple,// màu nó nháy lên khi người dùng click vào 
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //now change font's family from "Google Fonts"
            Text(this.category.content,
            style: Theme.of(context).textTheme.title),
          ],
        ),
        decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
             _color.withOpacity(0.8),
             _color
           ],
           begin: Alignment.topRight,
           end: Alignment.bottomLeft
           ),
           color: _color,
           borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}