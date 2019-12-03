
import 'package:flutter/material.dart';

import 'package:whatsapp_redesign/chat_Screen.dart';
import 'package:whatsapp_redesign/empty_screen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController _tabController;


  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
       return  DefaultTabController(length: 3, child: Scaffold(

               appBar: PreferredSize(child: Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Container(

                   child:SafeArea(child: Column(

                     children: <Widget>[
                       Expanded(child: Container(),
                       ),

                       TabBar(

                         controller: _tabController,
                         indicatorColor: Colors.transparent,
                         isScrollable: false,
                         unselectedLabelColor: Colors.grey.withOpacity(0.3),

                         labelStyle: TextStyle(fontSize: 18.0,),


                         tabs: [


                           Tab(child: Row(
                             children: <Widget>[
                               Text("Status"),
                               Container(
                                 height: 10,
                                 width: 10,
                                 margin: EdgeInsets.only(left: 5),
                                 alignment: Alignment.center,
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.grey,
                                 ),
                               )

                             ],
                           ),),

                           new Tab(child: Row(
                             children: <Widget>[
                               Text("Chats"),
                               Container(
                                 margin: EdgeInsets.only(left: 5),
                                 padding: EdgeInsets.all(7),
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.green,
                                 ),
                                 child: Center(child: Text("20",style: TextStyle(fontSize: 12,color: Colors.white),)),
                               ),

                             ],
                           ),),
                           new Tab(child:  Row(
                             children: <Widget>[
                               Text("Calls"),
                               Container(
                                 margin: EdgeInsets.only(left: 5),
                                 padding: EdgeInsets.all(7),
                                 decoration: BoxDecoration(
                                   shape: BoxShape.circle,
                                   color: Colors.grey,
                                 ),
                                 child: Center(child: Text("5",style: TextStyle(fontSize: 14,color: Colors.white),)),
                               ),

                             ],
                           ),),


                         ],

                       ),

                     ],
                   )) ,
                 ),
               ),
                   preferredSize: Size.fromHeight(100.0)),
               body: TabBarView(
                 children: [

                   EmptyScreen(),
                   ChatScreen(),
                   EmptyScreen()







                 ],
                 controller: _tabController,),
         bottomNavigationBar: Container(
           height: size.height/7,
           width: double.infinity,

           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,

             children: <Widget>[
               Container(
                 padding: EdgeInsets.only(top: 40,right: 20),
                 child: Column(
                   children: <Widget>[
                     Icon(Icons.camera_alt),
                     Text("Add Story")
                   ],
                 ),
               ),
               Container(
                 height: 60,
                 width: 60,
                 child: Material(
                     color: Colors.green,
                     elevation: 14.0,

                     borderRadius: BorderRadius.circular(100.0),
                     shadowColor: Color(0x802196F3),
                     child:Icon(Icons.message,color: Colors.white,size: 30,) ),
               ),
               Container(
                 padding: EdgeInsets.only(top: 40,left: 20),
                 child: Column(
                   children: <Widget>[
                     Icon(Icons.menu),
                     Text("Menu")
                   ],
                 ),
               ),
             ],
           ),
         ),
             ),




       );




  }
}
