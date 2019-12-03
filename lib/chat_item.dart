import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/chat_model.dart';

class ChatItem extends StatelessWidget {
  ChatItem(this.chatModel);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
            chatModel.story ?
               Stack(
                alignment: Alignment.topRight,
                children: <Widget>[

                  Container(
                   width: 60,
                    height: 60,


                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green,width: 2)
                    ),
                    child: CircleAvatar(backgroundImage: AssetImage(chatModel.profilePic,),),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green
                    ),
                    child: Center(child: Text(chatModel.storyCount.toString(),style: TextStyle(color: Colors.white),)),
                  ),
                ],
              )
             :   Container(

              width: 60,
              height: 60,
                  padding: EdgeInsets.all(2),

                  child: CircleAvatar(backgroundImage: AssetImage(chatModel.profilePic,),),

              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(left: 15,top: 10,bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(chatModel.name,style: TextStyle(fontSize: 20),),
                      Text(chatModel.lastMessage,style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                  chatModel.seen ? Container():  Container(
                      height: 10,
                        width: 10,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(chatModel.timeStamp,style: TextStyle(color: Colors.grey),)),
                  ],
                ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 10,top: 20,bottom: 10),
            child: Divider(color: Colors.white,),
          )
        ],
      ),
    );
  }
}
