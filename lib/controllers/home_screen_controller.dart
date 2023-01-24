import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  int index = 0;

  final room_name = [
    'Living Room',
    'Bedroom',
    'Kitchen',
    'Bathroom',
    'Office',
    'Washing Room'
  ];

  void setIndex(int index) {
    this.index = index;
    update();
  }
}
