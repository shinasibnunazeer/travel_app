import 'package:flutter/material.dart';
import 'package:flutter_animation_course/model/travel.dart';

class TravelRating extends StatelessWidget {
  const TravelRating({super.key, required this.travel});
  final Travel travel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(travel.rating.toStringAsFixed(1)),
        SizedBox(width: 10),
        ...List.generate(
          travel.stars,
          (index) => Icon(Icons.star_rate, size: 18, color: Colors.orange),
        ),
      ],
    );
  }
}
