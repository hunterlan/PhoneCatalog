class SoundDetails {
  String sound35MmJack;
  String soundLoudspeaker;
  String soundOther1;
  String soundOther2;

  SoundDetails({
    required this.sound35MmJack,
    required this.soundLoudspeaker,
    required this.soundOther1,
    required this.soundOther2,
  });

  factory SoundDetails.fromJson(Map<String, dynamic> json) => SoundDetails(
    sound35MmJack: json["sound35MmJack"],
    soundLoudspeaker: json["soundLoudspeaker"],
    soundOther1: json["soundOther1"],
    soundOther2: json["soundOther2"],
  );
}