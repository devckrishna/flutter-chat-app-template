import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';


class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child:Container(
            // margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
            // padding:
            //   EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
             ),
            ),
            child:ClipRRect (
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
             ),
               child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (ctx,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,MaterialPageRoute(
                          builder:(_)=>ChatScreen(chats[index].sender)
                        )
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: chats[index].unread ? Color(0xFFFFEFEE) : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(chats[index].sender.imageUrl),
                           ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                chats[index].sender.name,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),),
                              SizedBox(height:7),
                              Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child: Text(
                                  chats[index].text,
                                  style: TextStyle(
                                    color: chats[index].unread?Colors.black:Colors.grey[700]
                                  ),
                                overflow: TextOverflow.ellipsis,),
                              )
                          ],),
                          Column(
                            children: <Widget>[
                              Text(chats[index].time),
                              SizedBox(height:8),
                              chats[index].unread? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                   color: Theme.of(context).primaryColor,
                                ),
                                padding: EdgeInsets.all(3.5),
                               
                                child: Text(
                                  "NEW",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white
                                  ),)
                                  ):Text("")
                            ],
                          )
                        ],),
                    ),
                  );
                }),
            ),
          )
        ,
      
    );
  }
}