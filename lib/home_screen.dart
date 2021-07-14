import 'package:flutter/material.dart';
import 'package:sayuria_app/home_gridview.dart';
import 'package:sayuria_app/home_carousel.dart';
import 'package:sayuria_app/horizontal_scrollview.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Sayuria"),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notification_add_outlined),
            )
          ],
        ),
        body: Scrollbar(
          isAlwaysShown: true,
          controller: ScrollController(),
          child: SafeArea(
              child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 950),
              color: Colors.white,
              child: ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  HomeCarousel(),
                  SizedBox(
                    height: 15,
                  ),
                  TitleText("Produk Terlaris"),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: HorizontalScrollView(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TitleText("Produk Terlaris"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: HomeGridView(),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}

class TitleText extends StatelessWidget {
  String title;

  TitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
