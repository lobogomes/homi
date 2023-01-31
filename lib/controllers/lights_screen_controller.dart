import 'package:get/get.dart';

class LightsController extends GetxController {
  var switchData = true.obs;
  var index = 0.obs;
  var sliderData = 100.0.obs;

  void setSliderData(double sliderData) {
    this.sliderData.value = sliderData;
  }

  void changeSlider() {
    if (switchData.value) {
      setSliderData(100.0);
    } else {
      setSliderData(0.00);
    }
  }
}
