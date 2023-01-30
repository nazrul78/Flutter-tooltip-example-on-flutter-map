import 'package:flutter/material.dart';

class ClipperStack extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0.0, 0.0);
    path.lineTo(0.0, size.height - 10);
    path.lineTo((size.width / 2) - 5, size.height - 10);

    path.lineTo(size.width / 2, size.height);

    path.lineTo((size.width / 2) + 5, size.height - 10);
    path.lineTo(size.width, size.height - 10);

    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
