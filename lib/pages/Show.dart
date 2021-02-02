import 'package:flutter/material.dart';
import 'package:foodmonkey/helpers/CustomGrid.dart';
import 'package:foodmonkey/models/Product.dart';
import 'package:foodmonkey/models/Tag.dart';
import 'package:foodmonkey/utils/Constants.dart';
import 'package:foodmonkey/utils/Global.dart';

class Show extends StatefulWidget {
  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Products")),
      body:Column(children: [
        _buildCustomNavBar(),
        Expanded(child:CustomGrid.makeProductGrid(products,refresh))
      ],
    ));
  }
 
  refresh(){
    setState(() {
      print(Global.cartProducts.length);
    });
  }
  
  Widget _buildCustomNavBar(){
      return Container(
        height:45,
        decoration: BoxDecoration(
          color:primary
        ),
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context,index) => _buildNavTitle(index,tags[index]),
        )
      );
  }
  Widget _buildNavTitle(index,Tag tag){
    return GestureDetector(
      onTap: (){
        setState(() {
          currentIndex = index;
        });
      },
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Text(tag.name,style:TextStyle(fontSize: 20)),
        ),
        Container(
          width:40,
          height:2,
          decoration: BoxDecoration(
            color: currentIndex == index ? accent : Colors.transparent
          ),
        )
      ], ),
    );
  }
}