import 'continent_model.dart';

class CountriesModel {
  final String code;
  final String name;
  final String phone;
  final ContinentModel continent;
  final String capital;
  final String currency;
  final String emoji;

  CountriesModel({
    required this.code,
    required this.name,
    required this.phone,
    required this.continent,
    required this.capital,
    required this.currency,
    required this.emoji,
  });

  factory CountriesModel.fromJson(Map<String, dynamic> json) {
    return CountriesModel(
      code: json['code'] as String? ?? "",
      name: json['name'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      continent: ContinentModel.fromJson(json['continent']),
      capital: json['capital'] as String? ?? "",
      currency: json['currency'] as String? ?? "",
      emoji: json['emoji'] as String? ?? "",
    );
  }
}
