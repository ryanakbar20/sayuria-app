import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final product;

  DetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
          isAlwaysShown: true,
          controller: ScrollController(),
          child: Center(
            child: SingleChildScrollView(
                child: Container(
              constraints: BoxConstraints(maxWidth: 950),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      constraints: BoxConstraints(maxHeight: 500),
                      child: Center(
                        child: Image.asset(product.image),
                      ),
                      color: Colors.grey.shade200),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  product.price,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.green),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                FavoriteButton()
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(),
                        Text(
                          "Deskripsi :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Container(
                          constraints: BoxConstraints(maxWidth: 400),
                          child: Text(
                            product.description,
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
          )),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border));
  }
}
