import 'package:flutter/material.dart';
import 'Contact_List.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "To Do",
      home: Contact(),
    );
  }
}
