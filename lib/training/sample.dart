import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'dart:math';


void main() => runApp(const SampleOne());

class SampleOne extends StatelessWidget {
  const SampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PathExample(),);
  }
}

class MyContent extends StatelessWidget {
  const MyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("sadasdas");
  }
}

class PathExample extends StatelessWidget {
  const PathExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: PathPainter(),);
  }
}


class PathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0;

    Path path = Path();
    // TODO: do operations here
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
   
}

