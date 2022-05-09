import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
final String image;
ImagePage({required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}