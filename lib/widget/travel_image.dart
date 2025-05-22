import 'package:flutter/material.dart';
import 'package:flutter_animation_course/model/travel.dart';

class TravelImage extends StatelessWidget {
  const TravelImage({super.key,required this.travel});
final Travel travel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(travel.imageUrl, fit: BoxFit.cover),
      ),
    );  
  }
}
