import 'package:akrilii/core/image_app.dart';
import 'package:akrilii/model/onboarding_info.dart';

final onbordingItems = OnboardingItems();

class OnboardingItems {
  List<OnboardingInfo> onbordingItems = [
    // 1- The best doctors
    OnboardingInfo(
      titel: "onbording_info_titel_1",
      description: "",
      image: imageApp.onbordingimage1,
    ),

    // Complete care
    OnboardingInfo(
      titel: "onbording_info_titel_2",
      description: "",
      image: imageApp.onbordingimage2,
    ),

    // Complete test
    OnboardingInfo(
      titel: "onbording_info_titel_3",
      description: "",
      image: imageApp.onbordingimage3,
    ),
    OnboardingInfo(
      titel: "onbording_info_titel_4",
      description: "",
      image: imageApp.onbordingimage4,
    ),
  ];
}
