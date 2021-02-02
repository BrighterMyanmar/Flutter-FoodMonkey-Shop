import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodmonkey/helpers/TrianglePainter.dart';
import 'package:foodmonkey/utils/Api.dart';
import 'package:foodmonkey/utils/Constants.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _formKey = GlobalKey<FormState>();
  var _nameController = TextEditingController();
  var _nameError = "";
  var _emailController = TextEditingController();
  var _emailError = "";
  var _phoneController = TextEditingController();
  var _phoneError = "";
  var _passwordController = TextEditingController();
  var _passwordError = "";
  var _errorsMsg = [];

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
                  Text("Register",
                      style: TextStyle(fontSize: 35, color: normal)),
                  SizedBox(height: 20),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _nameController,
                          validator: (value) {
                            if (value.isEmpty) {
                              _errorsMsg.add("Name can't be mepty");
                              return "Name can't be mepty";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            if (value.length < 6) {
                              setState(() {
                                _nameError = "Name must have at least 6 chars";
                              });
                            } else {
                              setState(() {
                                _nameError = "";
                              });
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z]'))
                          ],
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "Username",
                              errorText: _nameError,
                              errorBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value){
                            if(value.isEmpty){
                              _errorsMsg.add("Email Cant' be mepty");
                              return "Email Cant' be mepty";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            if (value.length < 15) {
                              setState(() {
                                _emailError =
                                    "Email must has at least 15 chars";
                              });
                            } else {
                              setState(() {
                                _emailError ="";
                              });
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "Email",
                              errorText: _emailError,
                              prefixIcon: Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _phoneController,
                          onChanged: (value){
                            if(value.length < 7 || value.length > 11){
                              setState(() {
                                _phoneError = "Phone number must has betweeen 7 to 11 digits";
                              });
                              
                            }else{
                               setState(() {
                                _phoneError = "";
                              });
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          validator: (value){
                              if(value.isEmpty){
                                _errorsMsg.add("Phone number can't be Empty!");
                                return "Phone number can't be Empty!";
                              }
                              return null;
                          },
                          
                          decoration: InputDecoration(
                              labelText: "Phone",
                              errorText: _phoneError,
                              prefixIcon: Icon(Icons.phone),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          validator: (value){
                             if(value.isEmpty){
                               _passwordError = "Password Can't be empty";
                               return "Password Can't be empty";
                             }
                             return null;
                          },
                          onChanged: (value){
                            if(value.length < 8){
                                setState(() {
                                  _passwordError = "Password Must have at least 8 chars";
                                });
                            }else{
                              setState(() {
                                  _passwordError = "";
                                });
                            }
                          },
                          decoration: InputDecoration(
                              labelText: "Password",
                              errorText: _passwordError,
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
                                  onPressed: () {
                                    var con = _formKey.currentState.validate();
                                    if (con) {
                                      var name = _nameController.text;
                                      var email = _emailController.text;
                                      var phone = _phoneController.text;
                                      var password = _passwordController.text;

                                      Api.userRegister(
                                          name, email, phone, password);
                                    } else {
                                      print(_errorsMsg);
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.person,
                                          size: 30, color: primary),
                                      Text("Register",
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
