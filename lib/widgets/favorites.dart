import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/models/user_model.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';
class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return 
       Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical:10,horizontal:20),
                child: Text(
                  "Favorites" 
                  ,style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: Icon(Icons.more_horiz), 
                  onPressed: (){}),
              )
            ],
          ),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (ctx,index){
                return GestureDetector(
                  onTap: (){
                    
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (_)=>ChatScreen(favorites[index]))
                        );
                    
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal:15),
                    child:Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            favorites[index].imageUrl),
                        ),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w600
                          ),)
                      ],
                    )
                    ),
                );
              }),
          )
        ],
      )
    ;
  }
}