class MiscDetails {
  String miscColors;
  String miscModels;
  String miscPrice;
  String miscSar;
  String miscSarEu;

  MiscDetails({
    required this.miscColors,
    required this.miscModels,
    required this.miscPrice,
    required this.miscSar,
    required this.miscSarEu,
  });

  factory MiscDetails.fromJson(Map<String, dynamic> json) => MiscDetails(
    miscColors: json["miscColors"],
    miscModels: json["miscModels"],
    miscPrice: json["miscPrice"],
    miscSar: json["miscSar"],
    miscSarEu: json["miscSarEu"],
  );
}