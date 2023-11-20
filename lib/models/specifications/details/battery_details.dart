class BatteryDetails {
  String batteryCharging;
  String batteryType;

  BatteryDetails({
    required this.batteryCharging,
    required this.batteryType,
  });

  factory BatteryDetails.fromJson(Map<String, dynamic> json) => BatteryDetails(
    batteryCharging: json["batteryCharging"],
    batteryType: json["batteryType"],
  );
}