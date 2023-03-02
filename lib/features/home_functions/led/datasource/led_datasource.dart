import 'package:dio/dio.dart';
import 'package:homi/features/home_functions/led/models/led_model.dart';
import 'package:homi/generated/iot_service.pbgrpc.dart';
import 'package:homi/network/api/http_client.dart';

import 'dart:io';

abstract class ILedDatasource {
  Future<LedModel?> blinkLed({
    required int state,
    required String region,
    required String accessToken,
  });
}

class LedDatasource implements ILedDatasource {
  final IoTServiceClient? grpcClient;
  final HTTPClient? httpClient;

  LedDatasource(this.grpcClient, this.httpClient);

  @override
  Future<LedModel?> blinkLed({
    required int state,
    required String region,
    required String accessToken,
  }) async {
    try {
      if (Platform.isAndroid || Platform.isIOS) {
        final response = await grpcClient!.blinkLed(
          LedRequest(
            state: state,
            sensorName: region,
            accessToken: accessToken,
          ),
        );
        if (response.ledstate.values != null) {
          return LedModel(state: response.ledstate.values.first);
        }

        throw Exception();
      } else {
        final body = {
          'state': state,
          'sensorName': region,
          'accesstoken': accessToken,
        };
        final response = await httpClient!.put('led', data: body);

        if ((response as Response).statusCode == 200) {
          final state = response.data['ledState'];

          return LedModel(state: state);
        }

        throw Exception();
      }
    } catch (e) {
      return null;
    }
  }
}
