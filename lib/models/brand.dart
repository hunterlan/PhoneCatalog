class Brand {
  String name;

  Brand({
    required this.name,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    name: json["brandValue"],
  );
}