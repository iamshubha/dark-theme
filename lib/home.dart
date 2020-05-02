import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:thm/blocks/theams.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeNotifier _theamChanger = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () => _theamChanger.setTheme(ThemeData.dark()),
                child: Text("Dark Theme")),
            FlatButton(
                onPressed: () => _theamChanger.setTheme(ThemeData.light()),
                child: Text("Light Theme")),
          ],
        ),
      ),
    );
  }
}
