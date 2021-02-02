import 'package:flutter/material.dart';
import 'package:foodmonkey/models/Product.dart';
import 'package:foodmonkey/utils/Constants.dart';
import 'package:foodmonkey/utils/Global.dart';

class CustomGrid {
  static Widget makeProductGrid(List<Product> products,Function changeStae) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => _buildProductCard(products[index],changeStae),
    );
  }

  static Widget _buildProductCard(Product product,Function changeStae) {
    return Card(
      child: Column(
        children: [
          Text(product.name,
              style: TextStyle(
                  fontSize: 18, color: normal, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Image.asset("assets/images/${product.image}",
              width: 120, height: 120),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Global.addToCart(product);
                  changeStae();
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: accent,
                ),
              ),
              Text("3500 Ks"),
              Icon(
                Icons.visibility,
                color: accent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
