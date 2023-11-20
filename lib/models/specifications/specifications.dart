import 'details/battery_details.dart';
import 'details/body_details.dart';
import 'details/communication_details.dart';
import 'details/display_details.dart';
import 'details/features_details.dart';
import 'details/launch_details.dart';
import 'details/main_camera_details.dart';
import 'details/memory_details.dart';
import 'details/misc_details.dart';
import 'details/network_details.dart';
import 'details/phone_details.dart';
import 'details/platform_details.dart';
import 'details/selfie_camera_details.dart';
import 'details/sound_details.dart';
import 'details/tests_details.dart';

class Specifications {
  PhoneDetails phoneDetails;
  NetworkDetails gsmNetworkDetails;
  LaunchDetails gsmLaunchDetails;
  BodyDetails gsmBodyDetails;
  DisplayDetails gsmDisplayDetails;
  PlatformDetails gsmPlatformDetails;
  MemoryDetails gsmMemoryDetails;
  MainCameraDetails gsmMainCameraDetails;
  SelfieCameraDetails gsmSelfieCameraDetails;
  SoundDetails gsmSoundDetails;
  CommunicationsDetails gsmCommunicationsDetails;
  FeaturesDetails gsmFeaturesDetails;
  BatteryDetails gsmBatteryDetails;
  MiscDetails gsmMiscDetails;
  TestsDetails gsmTestsDetails;

  Specifications({
    required this.phoneDetails,
    required this.gsmNetworkDetails,
    required this.gsmLaunchDetails,
    required this.gsmBodyDetails,
    required this.gsmDisplayDetails,
    required this.gsmPlatformDetails,
    required this.gsmMemoryDetails,
    required this.gsmMainCameraDetails,
    required this.gsmSelfieCameraDetails,
    required this.gsmSoundDetails,
    required this.gsmCommunicationsDetails,
    required this.gsmFeaturesDetails,
    required this.gsmBatteryDetails,
    required this.gsmMiscDetails,
    required this.gsmTestsDetails,
  });

  factory Specifications.fromJson(Map<String, dynamic> json) => Specifications(
    phoneDetails: PhoneDetails.fromJson(json["phoneDetails"]),
    gsmNetworkDetails: NetworkDetails.fromJson(json["gsmNetworkDetails"]),
    gsmLaunchDetails: LaunchDetails.fromJson(json["gsmLaunchDetails"]),
    gsmBodyDetails: BodyDetails.fromJson(json["gsmBodyDetails"]),
    gsmDisplayDetails: DisplayDetails.fromJson(json["gsmDisplayDetails"]),
    gsmPlatformDetails: PlatformDetails.fromJson(json["gsmPlatformDetails"]),
    gsmMemoryDetails: MemoryDetails.fromJson(json["gsmMemoryDetails"]),
    gsmMainCameraDetails: MainCameraDetails.fromJson(json["gsmMainCameraDetails"]),
    gsmSelfieCameraDetails: SelfieCameraDetails.fromJson(json["gsmSelfieCameraDetails"]),
    gsmSoundDetails: SoundDetails.fromJson(json["gsmSoundDetails"]),
    gsmCommunicationsDetails: CommunicationsDetails.fromJson(json["gsmCommunicationsDetails"]),
    gsmFeaturesDetails: FeaturesDetails.fromJson(json["gsmFeaturesDetails"]),
    gsmBatteryDetails: BatteryDetails.fromJson(json["gsmBatteryDetails"]),
    gsmMiscDetails: MiscDetails.fromJson(json["gsmMiscDetails"]),
    gsmTestsDetails: TestsDetails.fromJson(json["gsmTestsDetails"]),
  );
}