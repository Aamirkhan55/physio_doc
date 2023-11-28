import 'package:flutter/material.dart';

class FavoriteItemModel extends ChangeNotifier {
  final List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addFavoriteItem (int value) {
     _selectedItem.add(value);
     notifyListeners();
  } 
 
 void removeFavoriteItem (int value) {
     _selectedItem.remove(value);
     notifyListeners();
  }  
}
