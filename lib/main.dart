

import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/screen_splash.dart';


const PRIME_KEEY ='userLogged';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sample One',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const splash_screen(),
    );
  }
 
}
