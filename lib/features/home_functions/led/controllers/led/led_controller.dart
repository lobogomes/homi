import 'package:flutter/foundation.dart';
import 'package:homi/features/home_functions/led/repositories/led_repository.dart';

part 'led_state.dart';

class LedController extends ValueNotifier<LedState> {
  final ILedRepository ledRepository;

  LedController(this.ledRepository) : super(LedInitialState());

  Future<void> blinkLed({
    required String region,
    required String accessToken,
  }) async {
    switch (value.runtimeType) {
      case LedOffState:
        await ledRepository.blinkLed(
          state: 1,
          region: region,
          accessToken: accessToken,
        );
        value = LedOnState();
        break;
      case LedInitialState:
      case LedOnState:
      default:
        await ledRepository.blinkLed(
          state: 0,
          region: region,
          accessToken: accessToken,
        );
        value = LedOffState();
        break;
    }
  }
}
