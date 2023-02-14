part of 'temperature_controller.dart';

abstract class TemperatureState {}

class TemperatureLoadingState extends TemperatureState {}

class TemperatureSuccessState extends TemperatureState {
  final double temperature;

  TemperatureSuccessState(this.temperature);
}
