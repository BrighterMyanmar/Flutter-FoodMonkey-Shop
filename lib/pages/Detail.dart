import 'package:flutter/material.dart';
import 'package:foodmonkey/utils/Constants.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("Detail")),
        body: Stack(
          children: [
            Container(
              height: (size.height / 3) * 2,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(top: size.height / 3),
              decoration: BoxDecoration(
                  color: secondary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildRichText("Price", "3500 Ks"),
                      _buildRichText("Size", "Large Size"),
                      _buildRichText("Promo", "Coca Cola"),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(samplePara,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: primary,
                        fontSize: 16,
                      )),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50,
                            height: 35,
                            child: RaisedButton(
                                onPressed: () {},
                                color: normal,
                                child: Icon(Icons.remove, color: primary)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("3".padLeft(2, "0"),
                                style: TextStyle(fontSize: 18)),
                          ),
                          SizedBox(
                            width: 50,
                            height: 35,
                            child: RaisedButton(
                                onPressed: () {},
                                color: normal,
                                child: Icon(Icons.add, color: primary)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 53,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border,
                                size: 40, color: normal)),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      SizedBox(
                          width: 50,
                          height: 40,
                          child: RaisedButton(
                              onPressed: () {},
                              color: normal,
                              child: Icon(
                                Icons.shopping_cart,
                                color: primary,
                              ))),
                      SizedBox(width: 10),
                      Expanded(
                          child: SizedBox(
                        height: 40,
                        child: RaisedButton(
                            onPressed: () {},
                            color: normal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("More Detail ... ",
                                    style: TextStyle(
                                        fontSize: 20, color: primary)),
                                Icon(
                                  Icons.visibility,
                                  color: primary,
                                )
                              ],
                            )),
                      ))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text("Big Burger",
                      style: TextStyle(
                          color: normal,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "We Serve\n",
                            style: TextStyle(
                                fontSize: 30,
                                color: normal,
                                fontWeight: FontWeight.bold,
                                fontFamily: "English")),
                        TextSpan(
                            text: "\tthe Best",
                            style: TextStyle(
                                fontSize: 25,
                                color: normal,
                                fontFamily: "English"))
                      ])),
                      Image.asset("assets/images/9.png",
                          width: 200, height: 250)
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildRichText(t1, t2) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
            text: "$t1\n",
            style:
                TextStyle(fontSize: 35, color: primary, fontFamily: "English")),
        TextSpan(
            text: "   $t2",
            style:
                TextStyle(fontSize: 20, color: normal, fontFamily: "English"))
      ]),
    );
  }
}
