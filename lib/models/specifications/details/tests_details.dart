class TestsDetails {
  String testsBatteryLife;
  String testsCamera;
  String testsDisplay;
  String testsLoudspeaker;
  String testsPerformance;

  TestsDetails({
    required this.testsBatteryLife,
    required this.testsCamera,
    required this.testsDisplay,
    required this.testsLoudspeaker,
    required this.testsPerformance,
  });

  factory TestsDetails.fromJson(Map<String, dynamic> json) => TestsDetails(
    testsBatteryLife: json["testsBatteryLife"],
    testsCamera: json["testsCamera"],
    testsDisplay: json["testsDisplay"],
    testsLoudspeaker: json["testsLoudspeaker"],
    testsPerformance: json["testsPerformance"],
  );

}