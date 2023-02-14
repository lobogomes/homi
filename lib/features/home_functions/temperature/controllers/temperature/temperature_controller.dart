import 'package:flutter/material.dart';

part 'temperature_state.dart';

class TemperatureController extends ValueNotifier<TemperatureState> {
  TemperatureController() : super(TemperatureSuccessState(20.0));
}
