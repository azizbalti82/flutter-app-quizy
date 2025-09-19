import 'package:get/get.dart';

class Provider extends GetxController {
  RxInt score = 0.obs;
  RxInt highScore = 0.obs;
  RxInt selectedSection = 0.obs;
  RxList<String> recent = <String>[].obs;

  void updateSelectedSection(int value) {
    selectedSection.value = value;
  }
  void updateScore(int value) {
    score.value = value;
  }
  void updateHighScore(int value) {
    highScore.value = value;
  }
  void updateRecent(List<String> value) {
    recent.value = value;
  }
}
