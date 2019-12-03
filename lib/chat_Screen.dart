import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/chat_item.dart';
import 'package:whatsapp_redesign/chat_model.dart';


class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.6)
            ),
            child: Row(
              children: <Widget>[
                Icon(Icons.search),
                Text("Search",)
              ],
            ),
          ),
        ),
    SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return ChatItem(chatModelList[index]);
    },childCount: chatModelList.length,))


      ],
    );
  }
}
