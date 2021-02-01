import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:foodmonkey/models/Category.dart';
import 'package:foodmonkey/utils/Constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTitleTaxBar("Tags"),
        Container(
          height: 150,
          child: Swiper(
            viewportFraction: 0.5,
            autoplay: true,
            scale: 0.5,
            itemCount: tags.length,
            itemBuilder: (context, index) =>
                Image.asset("assets/images/${tags[index].image}"),
          ),
        ),
        SizedBox(height:20),
        _buildTitleTaxBar("Categories"),
        Expanded(
          child: GridView.builder(
            itemCount: cats.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2),
            itemBuilder: (context, index) => _buildCategoryCard(cats[index]),
          ),
        )
      ],
    ));
  }

  Widget _buildCategoryCard(Category cat) {
    return Card(
      child: Image.asset("assets/images/${cat.image}"),
    );
  }

  Widget _buildTitleTaxBar(text) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: secondary,
            borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
        child: Text(text,
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: normal)));
  }
}
