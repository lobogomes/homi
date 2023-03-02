import 'package:flutter/material.dart';
import 'package:homi/features/home_functions/temperature/repositories/temperature_repository.dart';

part 'temperature_state.dart';

class TemperatureController extends ValueNotifier<TemperatureState> {
  final ITemperatureRepository temperatureRepository;

  TemperatureController(this.temperatureRepository)
      : super(TemperatureSuccessState(0.0));

  Future<void> getTemperature({
    required String accessToken,
    required String region,
  }) async {
    final response = await temperatureRepository.sayTemperature(
        region: region, accessToken: accessToken);

    if (response != null) {
      value = TemperatureSuccessState(
        response.temperature.ceilToDouble(),
      );
    }
  }
}
