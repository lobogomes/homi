import 'package:homi/features/home_functions/led/datasource/led_datasource.dart';
import 'package:homi/features/home_functions/led/models/led_model.dart';

abstract class ILedRepository {
  Future<LedModel?> blinkLed({
    required int state,
    required String region,
    required String accessToken,
  });
}

class LedRepository implements ILedRepository {
  final ILedDatasource ledDatasource;

  LedRepository(this.ledDatasource);

  @override
  Future<LedModel?> blinkLed({
    required int state,
    required String region,
    required String accessToken,
  }) async {
    return await ledDatasource.blinkLed(
      state: state,
      region: region,
      accessToken: accessToken,
    );
  }
}
