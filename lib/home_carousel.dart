import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sayuria_app/models/carousel_banner.dart';

class HomeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: CarouselController(),
      options: CarouselOptions(
          height: MediaQuery.of(context).size.width > 800 ? 200 : 150,
          autoPlay: true,
          autoPlayInterval: Duration(milliseconds: 2500),
          autoPlayAnimationDuration: Duration(milliseconds: 800)),
      items: carouselBannerList.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      image: DecorationImage(
                          image: AssetImage(item.image), fit: BoxFit.fill),
                    ),
                    child: Stack(
                      children: [
                        FractionallySizedBox(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.transparent,
                                  Colors.grey.withOpacity(0.5)
                                ])),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                item.title,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22.0),
                              ),
                            ))
                      ],
                    )),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
