import 'package:flutter/material.dart';
import 'package:foodmonkey/helpers/TrianglePainter.dart';
import 'package:foodmonkey/utils/Api.dart';
import 'package:foodmonkey/utils/Constants.dart';

class Flash extends StatefulWidget {
  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  loadInitialData()async{
    var catBol = await Api.getAllCats();
    var subBol = await Api.getAllSubs();
    var tagBol = await Api.getAllTags();
    if(catBol && subBol && tagBol){
       Navigator.pushReplacementNamed(context,'/home');
    }else{
      print("Data Loading Error");
    }
  }
  @override
  void initState() {
    super.initState();
    loadInitialData();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(children: [
        CustomPaint(
          painter: TrianglePainter(size),
        ),
        Padding(
          padding: const EdgeInsets.only(top:130,left:30),
          child: Text(
            "Food Monkey",
            style:TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color:normal
              )),
        ),
        Center(child: Image.asset("assets/images/FoodMonkey.png",scale: 1.5,)),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircularProgressIndicator(
                backgroundColor: accent,
                valueColor: AlwaysStoppedAnimation(normal),
              ),
              SizedBox(height:150)
            ],
          ),
        )
      ],)
    );
  }
}

