import 'package:homi/features/home_functions/temperature/datasource/temperature_datasource.dart';
import 'package:homi/features/home_functions/temperature/models/temperature_model.dart';

abstract class ITemperatureRepository {
  Future<TemperatureModel?> sayTemperature({
    required String region,
    required String accessToken,
  });
}

class TemperatureRepository implements ITemperatureRepository {
  final ITemperatureDatasource temperatureDatasource;

  TemperatureRepository(this.temperatureDatasource);

  @override
  Future<TemperatureModel?> sayTemperature({
    required String region,
    required String accessToken,
  }) async {
    return await temperatureDatasource.sayTemperature(
        region: region, accessToken: accessToken);
  }
}
