import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  final _padding = const EdgeInsets.fromLTRB(16, 32, 16, 0);

  Widget cupertinoStyle(BuildContext context) {
    return CupertinoPageScaffold(child: Padding(padding: _padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome to phone catalog!', style: TextStyle(
                fontFamily: 'DMSerif', fontSize: 60, height: 1.2)),
            SizedBox(height: 16,),
            Text('This is demo app, where you can more than 10,000 models!',
              style: TextStyle(fontFamily: 'RedHat', fontSize: 24),),
            SizedBox(height: 16,),
            CupertinoButton(onPressed: null,
              child: Text('Start discovering'),),
            Spacer(),
            Padding(
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
        )));
  }

  void navigate(BuildContext context) {
    Navigator.of(context).pushNamed('/brands');
  }

  Widget materialStyle(BuildContext context) {
    return Scaffold(body: Padding(padding: _padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome to phone catalog!', style: TextStyle(
                fontFamily: 'DMSerif', fontSize: 60, height: 1.2)),
            SizedBox(height: 16,),
            Text('This is demo app, where you can more than 10,000 models!',
              style: TextStyle(fontFamily: 'RedHat', fontSize: 24),),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: () => navigate(context),
              style: ButtonStyle(),
              child: Text('Start discovering'),),
            Spacer(),
            Padding(
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
        )));
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