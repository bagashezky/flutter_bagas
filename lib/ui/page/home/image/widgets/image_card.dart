import 'package:flutter/material.dart';

class ImageCardWidget extends StatefulWidget {
  const ImageCardWidget({Key? key}) : super(key: key);

  @override
  State<ImageCardWidget> createState() => _ImageCardWidget();
}

class _ImageCardWidget extends State<ImageCardWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/images/pic1.jpg'),
    ],);
  }
}