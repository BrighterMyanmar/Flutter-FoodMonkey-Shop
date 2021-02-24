import 'package:flutter/material.dart';
import 'package:foodmonkey/pages/Detail.dart';
import 'package:foodmonkey/pages/Flash.dart';
import 'package:foodmonkey/pages/Home.dart';
import 'package:foodmonkey/pages/Login.dart';
import 'package:foodmonkey/pages/Preview.dart';
import 'package:foodmonkey/pages/Register.dart';
import 'package:foodmonkey/pages/Show.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/show':(context)=>Show(),
      '/login':(context)=>Login(),
      '/flash':(context)=>Flash(),
      '/register':(context)=>Register(),
      '/home':(context)=>Home(),
      '/preview':(context) => Preview(),
      '/':(context) => Detail()
    },
    theme: ThemeData(
      fontFamily: 'English'
    ),
  ));
}
