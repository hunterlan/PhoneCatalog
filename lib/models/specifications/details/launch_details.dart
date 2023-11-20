class LaunchDetails {
  String launchAnnounced;
  String launchStatus;

  LaunchDetails({
    required this.launchAnnounced,
    required this.launchStatus,
  });

  factory LaunchDetails.fromJson(Map<String, dynamic> json) => LaunchDetails(
    launchAnnounced: json["launchAnnounced"],
    launchStatus: json["launchStatus"],
  );
}