import 'package:phone_catalog/models/brand.dart';

class Model extends Brand {
  @override
  String name;

  Model({
    required this.name,
  }) : super(name: name);

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    name: json["modelValue"],
  );
}