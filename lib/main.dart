// import 'package:flutter/material.dart';
// // import 'package:flutter/rendering.dart';
// import 'package:provider/provider.dart';
// import 'package:thm/blocks/theams.dart';
// import 'package:thm/home.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<TheamChanger>(

//       create: (_) => TheamChanger(ThemeData.dark()),
//       child: MaterialAppWithTheam(),
//     );
//   }
// }

// class MaterialAppWithTheam extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       // theme: theme.getTheme(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thm/blocks/theam_data.dart';
import 'package:thm/blocks/theams.dart';
import 'package:thm/home.dart';

void main() => runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(darkTheme),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      title: 'Chitr',
      theme: themeNotifier.getTheme(),
      home: HomePage(),
    );
  }
}