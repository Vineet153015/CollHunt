import 'package:flutter/material.dart';

Widget buildStarRating(double rating) {
  List<Widget> stars = [];
  for (int i = 1; i <= 5; i++) {
    if (i <= rating) {
      stars.add(Icon(
        Icons.star,
        color: Colors.amber,
        size: 24,
      ));
    } else if (i - rating < 1) {
      stars.add(Icon(
        Icons.star_half,
        color: Colors.amber,
        size: 24,
      ));
    } else {
      stars.add(Icon(
        Icons.star_border,
        color: Colors.amber,
        size: 24,
      ));
    }
  }
  return Row(children: stars);
}
