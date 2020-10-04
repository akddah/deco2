import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardProvider with ChangeNotifier {
  List<ItemCard> items = [
    ItemCard(
        codColor: 'RED',
        fctory: 'Factory1',
        ppm: 5000,
        ditils: 'High Levels of carbon',
        color: Colors.red),
    ItemCard(
        codColor: 'RED',
        fctory: 'Factory1',
        ppm: 5000,
        ditils: 'High Levels of carbon',
        color: Colors.red),
  ];
}

class ItemCard {
  String codColor;
  String fctory;
  int ppm;
  String ditils;
  Color color;
  ItemCard({
    this.codColor,
    this.fctory,
    this.ppm,
    this.ditils,
    this.color,
  });
}
