import 'package:flutter/material.dart';
import 'package:foodmonkey/models/Category.dart';
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
];
