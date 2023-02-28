import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeController extends ValueNotifier<HomeState> {
  HomeController() : super(HomeInitialState(0));

  final room_name = ['Living Room', 'Bedroom', 'Kitchen', 'Bathroom', 'Office', 'Washing Room'];

  void setIndex(int index) {
    value = HomeInitialState(index);
  }
}
