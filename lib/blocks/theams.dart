// import 'package:flutter/material.dart';

// class TheamChanger with ChangeNotifier{
//   ThemeData _themeData;
//   TheamChanger(this._themeData);

//   getTheam() => _themeData;
//   setTheam(ThemeData theam){
//     _themeData = theam;

//     notifyListeners();

//   }
// }
import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}