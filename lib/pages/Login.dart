import 'package:flutter/material.dart';
import 'package:foodmonkey/helpers/TrianglePainter.dart';
import 'package:foodmonkey/utils/Constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        CustomPaint(
          painter: TrianglePainter(size),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 120,
                      child: Image.asset("assets/images/FoodMonkey.png")),
                  SizedBox(height: 20),
                  Text("Login",
                      style: TextStyle(fontSize: 35, color: normal)),
                  SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "Phone",
                              prefixIcon: Icon(Icons.phone),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: 150,
                              child: RaisedButton(
                                  color: secondary,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.person,
                                          size: 30, color: primary),
                                      SizedBox(width:10),
                                      Text("Login",
                                          style: TextStyle(
                                              fontSize: 20, color: primary))
                                    ],
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
