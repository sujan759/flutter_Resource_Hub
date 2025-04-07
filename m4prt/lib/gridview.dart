import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'dart:io';

// What is ListTile and CircleAvatar?
// How to implement with ListView and ListView.builder

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          useMaterial3: true),
      home: HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  List<Map<String, dynamic>> mChats = [
    {
      'Name': 'Sujan Sahu',
      'Msg': 'What are do!',
      "time": "01:01 AM",
      "UnreadCount": 1,
      "profilePic": "https://www.w3schools.com/w3images/avatar2.png"
    },
    {
      'Name': 'Raj Sahu',
      'Msg': 'Hii!',
      "time": "10:01 AM",
      "UnreadCount": 0,
      "profilePic": "https://i.pravatar.cc/150?img=3"
    },
    {
      'Name': 'Ashis Sahu',
      'Msg': 'Hello are you free!',
      "time": "08:01 AM",
      "UnreadCount": 3,
      "profilePic": "https://i.pravatar.cc/150?img=3"
    },
    {
      'Name': 'Sam Sahu',
      'Msg': 'Good Morning!',
      "time": "06:01 AM",
      "UnreadCount": 2,
      "profilePic": "https://i.pravatar.cc/150?img=3"
    },
  ];

  ///Grid Tile ,View
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home GridView"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 11,
          crossAxisSpacing: 11,
        ),
        itemCount: mChats.length,
        itemBuilder: (context, index) {
          ///clipRRect  costumisid circle
          ///ClipOval all are round ded
          return ClipRRect(
            borderRadius: BorderRadius.circular(40),

            ///gridl
            child: GridTile(
              header: Container(
                color: Color.fromARGB(255, 7, 225, 18),
                child: Center(
                  child: Text('${mChats[index]['Name']}'),
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black54,
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage('${mChats[index]['profilePic']}'),
                ),
                title: Text('${mChats[index]['Name']}'),
                subtitle: Text('${mChats[index]['Msg']}'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${mChats[index]['time']}'),
                    if (mChats[index]['UnreadCount'] > 0)
                      CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        child: Text('${mChats[index]['UnreadCount']}',
                            style: TextStyle(fontSize: 12)),
                      ),
                  ],
                ),
              ),
              child: Image.network(
                mChats[index]['profilePic'],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
