import 'package:flutter/material.dart';

class ShoesModel with ChangeNotifier {

  String _assetsImage = 'assets/image/azul.png';
  double _shoesSize = 26.0;

  String get assetsImage => _assetsImage;
  double get shoesSize => _shoesSize;

  set shoesSizes(double index) {
    _shoesSize = index;
    notifyListeners();
  }

  set assetsImages(String value) {
    _assetsImage = value;
    notifyListeners();
  }
}