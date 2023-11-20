import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_catalog/widgets/brand_catalog_widget.dart';
import 'package:phone_catalog/widgets/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _homeWidget = const HomeWidget();

  final Map<String, WidgetBuilder> _routes = <String, WidgetBuilder> {
    '/brands': (BuildContext context) => BrandCatalogWidget(),
  };

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return MaterialApp(
        home: _homeWidget,
        routes: _routes,
      );
    } else {
      return CupertinoApp(
        home: _homeWidget,
        routes: _routes,
      );
    }
  }
}
