class MemoryDetails {
  String memoryCardSlot;
  String memoryInternal;
  String memoryOther1;

  MemoryDetails({
    required this.memoryCardSlot,
    required this.memoryInternal,
    required this.memoryOther1,
  });

  factory MemoryDetails.fromJson(Map<String, dynamic> json) => MemoryDetails(
    memoryCardSlot: json["memoryCardSlot"],
    memoryInternal: json["memoryInternal"],
    memoryOther1: json["memoryOther1"],
  );
}