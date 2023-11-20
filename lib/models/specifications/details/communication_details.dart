class CommunicationsDetails {
  String communicationsBluetooth;
  String communicationsNfc;
  String communicationsPositioning;
  String communicationsRadio;
  String communicationsUsb;
  String communicationsWlan;

  CommunicationsDetails({
    required this.communicationsBluetooth,
    required this.communicationsNfc,
    required this.communicationsPositioning,
    required this.communicationsRadio,
    required this.communicationsUsb,
    required this.communicationsWlan,
  });

  factory CommunicationsDetails.fromJson(Map<String, dynamic> json) => CommunicationsDetails(
    communicationsBluetooth: json["communicationsBluetooth"],
    communicationsNfc: json["communicationsNfc"],
    communicationsPositioning: json["communicationsPositioning"],
    communicationsRadio: json["communicationsRadio"],
    communicationsUsb: json["communicationsUsb"],
    communicationsWlan: json["communicationsWlan"],
  );
}