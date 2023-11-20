import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_catalog/widgets/catalog_widget.dart';
import 'package:phone_catalog/widgets/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _homeWidget = const HomeWidget();
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
        home: _homeWidget,
      );
    } else {
      return CupertinoApp(
        home: _homeWidget
      );
    }
  }
}
