import 'package:flutter/material.dart';
import 'package:foodmonkey/pages/Flash.dart';
import 'package:foodmonkey/pages/Home.dart';
import 'package:foodmonkey/pages/Login.dart';
import 'package:foodmonkey/pages/Register.dart';
import 'package:foodmonkey/pages/Show.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context)=>Show(),
      '/login':(context)=>Login(),
      '/flash':(context)=>Flash(),
      '/register':(context)=>Register(),
      '/home':(context)=>Home()
    },
    theme: ThemeData(
      fontFamily: 'English'
    ),
  ));
}
