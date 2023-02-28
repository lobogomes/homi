import 'package:flutter/foundation.dart';

part 'led_state.dart';

class LedController extends ValueNotifier<LedState> {
  LedController() : super(LedInitialState());
}
