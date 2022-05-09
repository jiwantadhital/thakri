import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:thadri/pages/carousel/imagePage.dart';


class SliderPage extends StatelessWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.maxFinite,
      child: ImageSlideshow(
          width: double.infinity,
          height: 200,
          initialPage: 0,
          indicatorColor: Colors.blue,
          indicatorBackgroundColor: Colors.grey,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            ImagePage(image: 'assets/images/thadrislide1.jpg'),
            ImagePage(image: 'assets/images/thadrislide2.jpg'),
            ImagePage(image: 'assets/images/thadrislide1.jpg'),
          ],
        ),
    );
  }
}