import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:phone_catalog/helpers/constants.dart';
import 'package:phone_catalog/models/brand.dart';

import '../env/env.dart';
import '../models/model.dart';
import '../models/specifications/specifications.dart';

class RapidPhoneCatalogService {
  final Dio _dio = Dio();
  final Map<String, dynamic> _headers = {
    'X-RapidAPI-Key': Env.rapidKey,
    'X-RapidAPI-Host': 'mobile-phone-specs-database.p.rapidapi.com'
  };

  Future<List<Brand>> getBrands() async {
    const endpoint = '/all-brands';
    Response brandsData = await _dio.get(Constants.baseUrl + endpoint, options:
    Options(
     headers: _headers
    ));

    List<dynamic> jsonList = brandsData.data;
    return jsonList.map((json) => Brand.fromJson(json)).toList();
  }

  Future<List<Model>> getModelsByBrand(String brandName) async {
    const endpoint = '/get-models-by-brandname';

    Response modelsResponse = await _dio.get('${Constants.baseUrl}$endpoint/$brandName',
    options: Options(headers: _headers));

    List<dynamic> modelsJsonList = modelsResponse.data;
    return modelsJsonList.map((json) => Model.fromJson(json)).toList();
  }

  Future<Specifications> getSpecifications(String brandName, String modelName) async {
    const endpoint = '/get-specifications-by-brandname-modelname';
    
    Response specificationsResponse = await _dio.get('${Constants.baseUrl}$endpoint/$brandName/$modelName',
    options: Options(headers: _headers));
    
    return Specifications.fromJson(json.decode(specificationsResponse.data));
  }
}