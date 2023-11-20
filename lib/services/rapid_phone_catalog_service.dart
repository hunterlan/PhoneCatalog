import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:phone_catalog/helpers/constants.dart';
import 'package:phone_catalog/models/brand.dart';

import '../env/env.dart';

class RapidPhoneCatalogService {
  final Dio _dio = Dio();

  Future<List<Brand>> getBrands() async {
    const endpoint = '/all-brands';
    Response brandsData = await _dio.get(Constants.baseUrl + endpoint, options:
    Options(
     headers: {
       'X-RapidAPI-Key': Env.rapidKey,
       'X-RapidAPI-Host': 'mobile-phone-specs-database.p.rapidapi.com'
     }
    ));

    List<dynamic> jsonList = brandsData.data;
    return jsonList.map((json) => Brand.fromJson(json)).toList();
  }
}