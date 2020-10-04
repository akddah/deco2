import 'package:flutter/material.dart';

class BGImg extends StatefulWidget {
  @override
  _BGImgState createState() => _BGImgState();
}

class _BGImgState extends State<BGImg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/BGImg.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
