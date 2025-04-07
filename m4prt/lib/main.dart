import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:m4prt/gridview.dart';
import 'package:m4prt/listView.dart';
import 'dart:io';

// What is ListTile and CircleAvatar?
// How to implement with ListView and ListView.builder
void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true
      ),
      home: HomePage1(),

    );
  }
}

/*
class HomePage extends StatelessWidget{
  List<Map<String, dynamic>> mChats =[
    {
      'Name': 'Sujan Sahu',
      'Msg':'What are do!',
      "time": "01:01 AM",
      "UnreadCount": 1,
      "profilePic":"https://i.pravatar.cc/150?img=3"
      },
    {
      'Name': 'Raj Sahu',
      'Msg':'Hii!',
      "time": "10:01 AM",
      "UnreadCount": 0,
      "profilePic":"https://i.pravatar.cc/150?img=3"
    },{
      'Name': 'Ashis Sahu',
      'Msg':'Hello are you free!',
      "time": "08:01 AM",
      "UnreadCount": 3,
      "profilePic":"https://i.pravatar.cc/150?img=3"
    },{
      'Name': 'Sam Sahu',
      'Msg':'Good Morning!',
      "time": "06:01 AM",
      "UnreadCount": 2,
      "profilePic":"https://i.pravatar.cc/150?img=3"
    },

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),

      body: ListView.builder(
        itemCount: mChats.length,
          itemBuilder: (context,index){
            return ListTile(
              // leading: Text('${index+1}.'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${mChats[index]['profilePic']}')
              ),
              title:Text('${mChats[index]['Name']}') ,
              subtitle:Text('${mChats[index]['Msg']}') ,
              // trailing: Text('${mChats[index]['time']}'),
              trailing: Column(
                children: [

                  Text('${mChats[index]['time']}'),
                  if(mChats[index]['UnreadCount']>0)
                  CircleAvatar(
                    maxRadius: 15,
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text('${mChats[index]['UnreadCount']}'),
                    
                  )

                  
                ],
              ),
            );


      })

    );
  }
  


}
*/