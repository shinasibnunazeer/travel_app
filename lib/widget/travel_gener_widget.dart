import 'package:flutter/material.dart';
import 'package:flutter_animation_course/model/travel.dart';

class TravelGenerWidget extends StatelessWidget {
  const TravelGenerWidget({super.key, required this.travel});
  final Travel travel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          travel.genres
              .map(
                (genre) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[600]!),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      genre,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ),
                ),
              )
              .toList(),
    );
  }
}
