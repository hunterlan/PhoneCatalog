class DisplayDetails {
  String displayType;
  String displaySize;
  String displayResolution;
  String displayProtection;
  String displayOther1;

  DisplayDetails({
    required this.displayType,
    required this.displaySize,
    required this.displayResolution,
    required this.displayProtection,
    required this.displayOther1,
  });

  factory DisplayDetails.fromJson(Map<String, dynamic> json) => DisplayDetails(
    displayType: json["displayType"],
    displaySize: json["displaySize"],
    displayResolution: json["displayResolution"],
    displayProtection: json["displayProtection"],
    displayOther1: json["displayOther1"],
  );
}