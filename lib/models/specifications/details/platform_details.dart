class PlatformDetails {
  String platformChipset;
  String platformCpu;
  String platformGpu;
  String platformOs;

  PlatformDetails({
    required this.platformChipset,
    required this.platformCpu,
    required this.platformGpu,
    required this.platformOs,
  });

  factory PlatformDetails.fromJson(Map<String, dynamic> json) => PlatformDetails(
    platformChipset: json["platformChipset"],
    platformCpu: json["platformCpu"],
    platformGpu: json["platformGpu"],
    platformOs: json["platformOs"],
  );
}