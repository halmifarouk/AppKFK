import 'package:app_kfk/acceuil_page.dart';
import 'package:flutter/material.dart'; 

void main() {
   runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 

  const MyApp({Key key}) : super(key: key); 
  
  @override 
  Widget build(BuildContext context) { 
    return const MaterialApp( 
      title: 'app kfk',
      debugShowCheckedModeBanner: false,
      home: AcceuilPage()
    ); 
  } 
}



