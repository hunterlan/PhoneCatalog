class PhoneDetails {
  int customId;
  String yearValue;
  String brandValue;
  String modelValue;

  PhoneDetails({
    required this.customId,
    required this.yearValue,
    required this.brandValue,
    required this.modelValue,
  });

  factory PhoneDetails.fromJson(Map<String, dynamic> json) => PhoneDetails(
    customId: json["customId"],
    yearValue: json["yearValue"],
    brandValue: json["brandValue"],
    modelValue: json["modelValue"],
  );
}