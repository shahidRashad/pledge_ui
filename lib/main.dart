import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pledge/pledge/ui/my_home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:  ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}