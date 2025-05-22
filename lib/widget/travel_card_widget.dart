import 'package:flutter/material.dart';
import 'package:flutter_animation_course/model/travel.dart';
import 'package:flutter_animation_course/widget/travel_gener_widget.dart';
import 'package:flutter_animation_course/widget/travel_image.dart';
import 'package:flutter_animation_course/widget/travel_rating.dart';

class TravelCardWidget extends StatelessWidget {
  const TravelCardWidget({super.key, required this.travel});
  final Travel travel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          spacing: 4,
          children: [
            Expanded(child: TravelImage(travel: travel)),
            Text(
              travel.placeName,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TravelGenerWidget(travel: travel),
            TravelRating(travel: travel),
            Text('...', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
