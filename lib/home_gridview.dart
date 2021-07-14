import 'package:flutter/material.dart';
import 'package:sayuria_app/detail_screen.dart';
import 'package:sayuria_app/models/best_selling_product.dart';

class HomeGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width > 800 ? 3 : 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        shrinkWrap: true,
        children: bestSellingProductList.reversed.map((item) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(item);
              }));
            },
            child: Container(
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Center(
                          child: Image.asset(item.image),
                        ),
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
            ),
          );
        }).toList(),
      ),
    );
  }
}
