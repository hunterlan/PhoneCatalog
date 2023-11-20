class SelfieCameraDetails {
  String selfieCameraFeatures;
  String selfieCameraSingle;
  String selfieCameraVideo;

  SelfieCameraDetails({
    required this.selfieCameraFeatures,
    required this.selfieCameraSingle,
    required this.selfieCameraVideo,
  });

  factory SelfieCameraDetails.fromJson(Map<String, dynamic> json) => SelfieCameraDetails(
    selfieCameraFeatures: json["selfieCameraFeatures"],
    selfieCameraSingle: json["selfieCameraSingle"],
    selfieCameraVideo: json["selfieCameraVideo"],
  );
}
