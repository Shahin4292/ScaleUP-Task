import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scale_up_task/Res/assets/app_assets.dart';

class SingleImageCarousel extends StatelessWidget {
  final String imagePath = AppAssets.uncharted;

  const SingleImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
      ),
      items: [
        Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              height: 165,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover,)
              ),
            );
          },
        ),
      ],
    );
  }
}
