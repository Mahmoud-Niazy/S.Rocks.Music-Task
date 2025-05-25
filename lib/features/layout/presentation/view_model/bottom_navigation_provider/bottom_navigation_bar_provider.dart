import 'package:flutter/foundation.dart';

class BottomNavigationBarProvider extends ChangeNotifier {

  int currentIndex = 0;

  toggle(int index){
    currentIndex = index;
   notifyListeners();
  }
}
