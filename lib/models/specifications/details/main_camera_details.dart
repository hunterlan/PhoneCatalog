class MainCameraDetails {
  String mainCameraFeatures;
  String mainCameraQuad;
  String mainCameraVideo;

  MainCameraDetails({
    required this.mainCameraFeatures,
    required this.mainCameraQuad,
    required this.mainCameraVideo,
  });

  factory MainCameraDetails.fromJson(Map<String, dynamic> json) => MainCameraDetails(
    mainCameraFeatures: json["mainCameraFeatures"],
    mainCameraQuad: json["mainCameraQuad"],
    mainCameraVideo: json["mainCameraVideo"],
  );
}