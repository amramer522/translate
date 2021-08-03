import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                translator.setNewLanguage(
                  context,
                  newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                  remember: true,
                  restart: true,
                );
              },
              icon: Icon(Icons.accessibility_sharp))
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(translator.translate('googleTest')),
              Text(translator.translate('buttonTitle')),
              Text(translator.translate('hello')),
            ],
          ),
        ),
      ),
    );
  }
}
