import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:developer';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Content(),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    log('data: $size');
    return Container(
      width: size.width,
      height: size.height,
      color: HexColor("634BFF"),
      alignment: Alignment.bottomCenter, // where to position the child
      child: Container(
        width: size.width,
        height: size.height*0.5,
        color: Colors.white,
      ),
    );
  }
}
