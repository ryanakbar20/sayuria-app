import 'package:flutter/material.dart';
import 'package:sayuria_app/detail_screen.dart';
import 'package:sayuria_app/models/best_selling_product.dart';

class HorizontalScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width > 800 ? 220 : 180,
      margin: EdgeInsets.only(top: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: bestSellingProductList.map((item) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(item);
              }));
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(item.image),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      item.name,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Rp${item.price}",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
