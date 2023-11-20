import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:phone_catalog/widgets/catalog_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  final _padding = const EdgeInsets.fromLTRB(16, 32, 16, 0);

  void navigate(BuildContext context) {
    if (Platform.isAndroid) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CatalogWidget())
      );
    } else {
      Navigator.of(context).push(
          CupertinoPageRoute(builder: (context) => CatalogWidget())
      );
    }
  }

  Widget getPlatformButton(BuildContext context) {
    if (Platform.isAndroid) {
      return ElevatedButton(onPressed: () => navigate(context), child: const Text('Start discovering'));
    } else {
      return const CupertinoButton(onPressed: null, child: Text('Start discovering'));
    }
  }

  Widget generalStyle(BuildContext context) {
    return Padding(padding: _padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome to phone catalog!', style: TextStyle(
                fontFamily: 'DMSerif', fontSize: 60, height: 1.2)),
            const SizedBox(height: 16,),
            const Text('This is demo app, where you can more than 10,000 models!',
              style: TextStyle(fontFamily: 'RedHat', fontSize: 24),),
            const SizedBox(height: 16,),
            getPlatformButton(context),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24), child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Developed by Kostiantyn Sharykin',
                    style: TextStyle(fontFamily: 'RedHat')),
                Text('Powered by RapidAPI, Mobile Phone Specs Database',
                  style: TextStyle(fontFamily: 'RedHat'),)
              ],
            ),)
          ],
        ));
  }

  Widget cupertinoStyle(BuildContext context) {
    return CupertinoPageScaffold(child: generalStyle(context));
  }

  Widget materialStyle(BuildContext context) {
    return Scaffold(body: generalStyle(context));
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return materialStyle(context);
    } else {
      return cupertinoStyle(context);
    }
  }
}