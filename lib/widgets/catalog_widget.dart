import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phone_catalog/services/rapid_phone_catalog_service.dart';

import '../models/brand.dart';

//TODO: Add search bar
class CatalogWidget extends StatefulWidget {
  late String? model;

  CatalogWidget({super.key, this.model});

  @override
  State<StatefulWidget> createState() {
    return BrandCatalogState();
  }
}

class BrandCatalogState extends State<CatalogWidget> {
  final _phoneCatalogService = RapidPhoneCatalogService();

  Widget cupertinoStyle(BuildContext context) {
    return CupertinoPageScaffold(child: Column());
  }

  Widget materialStyle(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Brand>>(
        future: widget.model == null ? _phoneCatalogService.getBrands() : _phoneCatalogService.getModelsByBrand(widget.model!),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data?[index].name ?? "null"),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () => {
                        if (Platform.isAndroid) {
                          if (widget.model == null) {
                            Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => CatalogWidget(model: snapshot.data?[index].name)))
                          } else {

                          }
                        } else {
                          //TODO: Do it for cupertino
                        }
                       }
                      ),
                    );
                });
          }
          else {
            return const CircularProgressIndicator();
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