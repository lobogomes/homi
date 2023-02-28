///
//  Generated code. Do not modify.
//  source: iot_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'iot_service.pb.dart' as $0;
export 'iot_service.pb.dart';

class IoTServiceClient extends $grpc.Client {
  static final _$getAccessToken = $grpc.ClientMethod<$0.Credentials, $0.Token>('/IoTService/GetAccessToken',
      ($0.Credentials value) => value.writeToBuffer(), ($core.List<$core.int> value) => $0.Token.fromBuffer(value));
  static final _$sayTemperature = $grpc.ClientMethod<$0.TemperatureRequest, $0.TemperatureReply>(
      '/IoTService/SayTemperature',
      ($0.TemperatureRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TemperatureReply.fromBuffer(value));
  static final _$blinkLed = $grpc.ClientMethod<$0.LedRequest, $0.LedReply>('/IoTService/BlinkLed',
      ($0.LedRequest value) => value.writeToBuffer(), ($core.List<$core.int> value) => $0.LedReply.fromBuffer(value));
  static final _$sayLuminosity = $grpc.ClientMethod<$0.LuminosityRequest, $0.LuminosityReply>(
      '/IoTService/SayLuminosity',
      ($0.LuminosityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LuminosityReply.fromBuffer(value));

  IoTServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options, $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Token> getAccessToken($0.Credentials request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccessToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.TemperatureReply> sayTemperature($0.TemperatureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayTemperature, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedReply> blinkLed($0.LedRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$blinkLed, request, options: options);
  }

  $grpc.ResponseFuture<$0.LuminosityReply> sayLuminosity($0.LuminosityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayLuminosity, request, options: options);
  }
}

abstract class IoTServiceBase extends $grpc.Service {
  $core.String get $name => 'IoTService';

  IoTServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Credentials, $0.Token>('GetAccessToken', getAccessToken_Pre, false, false,
        ($core.List<$core.int> value) => $0.Credentials.fromBuffer(value), ($0.Token value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TemperatureRequest, $0.TemperatureReply>(
        'SayTemperature',
        sayTemperature_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.TemperatureRequest.fromBuffer(value),
        ($0.TemperatureReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LedRequest, $0.LedReply>(
        'BlinkLed',
        blinkLed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LedRequest.fromBuffer(value),
        ($0.LedReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LuminosityRequest, $0.LuminosityReply>(
        'SayLuminosity',
        sayLuminosity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LuminosityRequest.fromBuffer(value),
        ($0.LuminosityReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.Token> getAccessToken_Pre($grpc.ServiceCall call, $async.Future<$0.Credentials> request) async {
    return getAccessToken(call, await request);
  }

  $async.Future<$0.TemperatureReply> sayTemperature_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TemperatureRequest> request) async {
    return sayTemperature(call, await request);
  }

  $async.Future<$0.LedReply> blinkLed_Pre($grpc.ServiceCall call, $async.Future<$0.LedRequest> request) async {
    return blinkLed(call, await request);
  }

  $async.Future<$0.LuminosityReply> sayLuminosity_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LuminosityRequest> request) async {
    return sayLuminosity(call, await request);
  }

  $async.Future<$0.Token> getAccessToken($grpc.ServiceCall call, $0.Credentials request);
  $async.Future<$0.TemperatureReply> sayTemperature($grpc.ServiceCall call, $0.TemperatureRequest request);
  $async.Future<$0.LedReply> blinkLed($grpc.ServiceCall call, $0.LedRequest request);
  $async.Future<$0.LuminosityReply> sayLuminosity($grpc.ServiceCall call, $0.LuminosityRequest request);
}
