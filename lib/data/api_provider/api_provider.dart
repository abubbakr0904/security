import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../models/country_model.dart';
import '../models/responce.dart';

class ApiProvider {
  static Future<MyResponse> getCountries() async {
    try {
      http.Response response = await http.get(Uri.parse("https://all-countries.free.mockoapp.net/countries"));
      if (response.statusCode == HttpStatus.ok) {
        return MyResponse(
          data: (jsonDecode(response.body)['data']['countries'] as List?)
              ?.map((e) => CountriesModel.fromJson(e))
              .toList() ??
              [],
        );
      }
      return MyResponse(error: "Noma'lum xatolik");
    } catch (error) {
      return MyResponse(error: error.toString());
    }
  }
}
