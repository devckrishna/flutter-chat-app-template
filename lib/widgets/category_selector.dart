import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  var selectedIndex=0;
  List<String> categories=["Messages","Online","Favorites","Groups",'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical:30,horizontal:20),
              child: Row(
                children: <Widget>[
                  Text(
                    categories[index],
                    style: TextStyle(
                      letterSpacing: 1.2,
                      color: selectedIndex==index?Colors.white:Colors.white60,
                      fontSize: 20,
                      fontWeight: selectedIndex==index?FontWeight.bold:FontWeight.w600
                    ),)
                ],),
            ),
          );
        },
        itemCount: categories.length,),
    );
  }
}