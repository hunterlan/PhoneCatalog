class NetworkDetails {
  String networkTechnology;
  String network2GBands;
  String network3GBands;
  String network4GBands;
  String network5GBands;
  String networkSpeed;

  NetworkDetails({
    required this.networkTechnology,
    required this.network2GBands,
    required this.network3GBands,
    required this.network4GBands,
    required this.network5GBands,
    required this.networkSpeed,
  });

  factory NetworkDetails.fromJson(Map<String, dynamic> json) => NetworkDetails(
    networkTechnology: json["networkTechnology"],
    network2GBands: json["network2GBands"],
    network3GBands: json["network3GBands"],
    network4GBands: json["network4GBands"],
    network5GBands: json["network5GBands"],
    networkSpeed: json["networkSpeed"],
  );
}