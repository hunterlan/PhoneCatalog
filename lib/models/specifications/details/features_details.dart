class FeaturesDetails {
  String featuresOther1;
  String featuresOther2;
  String featuresOther3;
  String featuresOther4;

  FeaturesDetails({
    required this.featuresOther1,
    required this.featuresOther2,
    required this.featuresOther3,
    required this.featuresOther4,
  });

  factory FeaturesDetails.fromJson(Map<String, dynamic> json) => FeaturesDetails(
    featuresOther1: json["featuresOther1"],
    featuresOther2: json["featuresOther2"],
    featuresOther3: json["featuresOther3"],
    featuresOther4: json["featuresOther4"],
  );
}