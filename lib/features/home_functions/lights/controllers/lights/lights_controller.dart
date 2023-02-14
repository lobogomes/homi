import 'package:flutter/foundation.dart';

part 'lights_state.dart';

class LightsController extends ValueNotifier<LightsState> {
  LightsController() : super(LightsInitialState());
}
