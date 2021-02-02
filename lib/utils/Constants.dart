import 'package:flutter/material.dart';
import 'package:foodmonkey/models/Category.dart';
import 'package:foodmonkey/models/Product.dart';
import 'package:foodmonkey/models/Tag.dart';

const Color yellow = Color(0xffFDC054);
const Color darkGrey = Color(0xff202020);
const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);

const Color primary = Color(0xFFF6F6F6);
const Color secondary = Color(0xFFFFBB91);
const Color accent = Color(0xFFFF8E6E);
const Color normal = Color(0xFF515070);

List<Category> cats = [
    Category(name: "Burger",image: "Category_Burger.png"),
    Category(name: "Chicken Fried",image: "Category_Chicken_Fried.png"),
    Category(name: "Coffee",image: "Category_Coffee.png"),
    Category(name: "French Fried",image: "Category_French_Fried.png"),
    Category(name: "Hotpot",image: "Category_Hotpot.png"),
    Category(name: "Noodle",image: "Category_Noodle.png"),
    Category(name: "Soft Drink",image: "Category_Soft Drink.png"),
    Category(name: "Warranty",image: "7_Day_Return_Warrranty.png"),
];
List<Tag> tags = [
  Tag(name:"Flash Sale",image:"flash_sale.jpg"),
  Tag(name:"Popular",image:"popular.jpg"),
  Tag(name:"Drink",image:"Drink.png"),
  Tag(name:"Food",image:"Food.png"),
  Tag(name:"Popular",image:"popular.jpg"),
  Tag(name:"Drink",image:"Drink.png"),
];

List<Product> products = [
    Product(id:"1",name:"Burger King",image:"1.png"),
    Product(id:"2",name:"Burger Queen",image:"2.png"),
    Product(id:"3",name:"Burger Prince",image:"3.png"),
    Product(id:"4",name:"Burger Princess",image:"4.png"),
    Product(id:"5",name:"Burger Baby",image:"5.png"),
    Product(id:"6",name:"French Fried",image:"6.png"),
    Product(id:"7",name:"Hot Pot",image:"7.png"),
    Product(id:"8",name:"T Shirt",image:"8.png"),
    Product(id:"19",name:"Good One",image:"9.png"),
    Product(id:"10",name:"So So",image:"10.png"),
];
