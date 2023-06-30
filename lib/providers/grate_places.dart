

import 'package:ciclovia_mais/models/place.dart';
import 'package:flutter/material.dart';

class GratePlaces with ChangeNotifier {
  List<Place> get items {
    return [..._items];
  }
  int get itemsCount {
    return _items.length;
  }

  Place itemByIndex(int index) {
    return _items [index];
  }
}