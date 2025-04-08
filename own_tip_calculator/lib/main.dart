import 'package:flutter/material.dart';
import 'home_Ui/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Own tip Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0000ff)),
        useMaterial3: true
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
