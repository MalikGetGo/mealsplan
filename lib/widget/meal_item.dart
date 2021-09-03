import 'package:flutter/material.dart';
import '../models/meal_model.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          child: Column(children: <Widget>[
            Stack(children: <Widget>[Image.network(imageUrl)]),
          ]),
        ));
  }
}
