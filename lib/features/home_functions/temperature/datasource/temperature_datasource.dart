import 'package:dio/dio.dart';
import 'package:homi/features/home_functions/temperature/models/temperature_model.dart';
import 'package:homi/generated/iot_service.pbgrpc.dart';
import 'package:homi/network/api/http_client.dart';
import 'dart:io';

abstract class ITemperatureDatasource {
  Future<TemperatureModel?> sayTemperature({
    required String region,
    required String accessToken,
  });
}

class TemperatureDatasource implements ITemperatureDatasource {
  final IoTServiceClient? grpcClient;
  final HTTPClient? httpClient;

  TemperatureDatasource(this.grpcClient, this.httpClient);

  @override
  Future<TemperatureModel?> sayTemperature(
      {required String region, required String accessToken}) async {
    try {
      if (Platform.isAndroid || Platform.isIOS) {
        final response = await grpcClient!.sayTemperature(
          TemperatureRequest(
            sensorName: 'lavanderia',
            accessToken: accessToken,
          ),
        );
        if (response.temperature.isNotEmpty) {
          return TemperatureModel(
              temperature: double.parse(response.temperature));
        }

        throw Exception();
      } else {
        final body = {
          'sensorName': 'lavanderia',
          'accesstoken': accessToken,
        };
        final response = await httpClient!.get('temperature', data: body);

        if ((response as Response).statusCode == 200) {
          final state = response.data['temperature'] as String;

          return TemperatureModel(temperature: double.parse(state));
        }

        throw Exception();
      }
    } catch (e) {
      return null;
    }
  }
}
