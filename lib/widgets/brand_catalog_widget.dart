import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_catalog/services/rapid_phone_catalog_service.dart';

import '../models/brand.dart';

//TODO: Add search bar
class BrandCatalogWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BrandCatalogState();
  }
}

class BrandCatalogState extends State<BrandCatalogWidget> {
  final _phoneCatalogService = RapidPhoneCatalogService();

  Widget cupertinoStyle(BuildContext context) {
    return CupertinoPageScaffold(child: Column());
  }

  Widget materialStyle(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Brand>>(
        future: _phoneCatalogService.getBrands(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data?[index].name ?? "null"),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: null,
                    ),
                  );
                });
          }
          else {
            return CircularProgressIndicator();
          }
        },
      )
    );
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