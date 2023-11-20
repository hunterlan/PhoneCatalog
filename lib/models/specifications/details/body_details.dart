class BodyDetails {
  String bodyDimensions;
  String bodyWeight;
  String bodySim;
  String bodyBuild;
  String bodyOther1;
  String bodyOther2;
  String bodyOther3;

  BodyDetails({
    required this.bodyDimensions,
    required this.bodyWeight,
    required this.bodySim,
    required this.bodyBuild,
    required this.bodyOther1,
    required this.bodyOther2,
    required this.bodyOther3,
  });

  factory BodyDetails.fromJson(Map<String, dynamic> json) => BodyDetails(
    bodyDimensions: json["bodyDimensions"],
    bodyWeight: json["bodyWeight"],
    bodySim: json["bodySim"],
    bodyBuild: json["bodyBuild"],
    bodyOther1: json["bodyOther1"],
    bodyOther2: json["bodyOther2"],
    bodyOther3: json["bodyOther3"],
  );
}