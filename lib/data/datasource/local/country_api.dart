import 'dart:convert';

import '../../currency_code_json.dart';
import '../../model/country.dart';

class CountryApi {
  Future<List<Country>> getNationalName() async {
    await Future.delayed(const Duration(seconds: 1));
    String jsonString = data; //currencyCodeJson.dart

    Iterable json = jsonDecode(jsonString);
    return json.map((e) => Country.fromJson(e)).toList();
  }
}