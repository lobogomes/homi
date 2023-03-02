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
  static final _$addNewUser =
      $grpc.ClientMethod<$0.Credentials, $0.AddNewUserReply>(
          '/IoTService/AddNewUser',
          ($0.Credentials value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddNewUserReply.fromBuffer(value));
  static final _$getAccessToken = $grpc.ClientMethod<$0.Credentials, $0.Token>(
      '/IoTService/GetAccessToken',
      ($0.Credentials value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Token.fromBuffer(value));
  static final _$getRegions =
      $grpc.ClientMethod<$0.GetRegionsRequest, $0.RegionsReply>(
          '/IoTService/GetRegions',
          ($0.GetRegionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RegionsReply.fromBuffer(value));
  static final _$addRegion =
      $grpc.ClientMethod<$0.AddRegionRequest, $0.AddRegionReply>(
          '/IoTService/AddRegion',
          ($0.AddRegionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AddRegionReply.fromBuffer(value));
  static final _$removeRegion =
      $grpc.ClientMethod<$0.RemoveRegionRequest, $0.RemoveRegionReply>(
          '/IoTService/RemoveRegion',
          ($0.RemoveRegionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveRegionReply.fromBuffer(value));
  static final _$getLastRoute =
      $grpc.ClientMethod<$0.GetLastRouteRequest, $0.RouteReply>(
          '/IoTService/GetLastRoute',
          ($0.GetLastRouteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RouteReply.fromBuffer(value));
  static final _$setRoute =
      $grpc.ClientMethod<$0.SetRouteRequest, $0.SetRouteReply>(
          '/IoTService/SetRoute',
          ($0.SetRouteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SetRouteReply.fromBuffer(value));
  static final _$sayTemperature =
      $grpc.ClientMethod<$0.TemperatureRequest, $0.TemperatureReply>(
          '/IoTService/SayTemperature',
          ($0.TemperatureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TemperatureReply.fromBuffer(value));
  static final _$blinkLed = $grpc.ClientMethod<$0.LedRequest, $0.LedReply>(
      '/IoTService/BlinkLed',
      ($0.LedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LedReply.fromBuffer(value));
  static final _$sayLuminosity =
      $grpc.ClientMethod<$0.LuminosityRequest, $0.LuminosityReply>(
          '/IoTService/SayLuminosity',
          ($0.LuminosityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LuminosityReply.fromBuffer(value));

  IoTServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddNewUserReply> addNewUser($0.Credentials request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addNewUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Token> getAccessToken($0.Credentials request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccessToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegionsReply> getRegions($0.GetRegionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRegions, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddRegionReply> addRegion($0.AddRegionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRegion, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveRegionReply> removeRegion(
      $0.RemoveRegionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeRegion, request, options: options);
  }

  $grpc.ResponseFuture<$0.RouteReply> getLastRoute(
      $0.GetLastRouteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLastRoute, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetRouteReply> setRoute($0.SetRouteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRoute, request, options: options);
  }

  $grpc.ResponseFuture<$0.TemperatureReply> sayTemperature(
      $0.TemperatureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayTemperature, request, options: options);
  }

  $grpc.ResponseFuture<$0.LedReply> blinkLed($0.LedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$blinkLed, request, options: options);
  }

  $grpc.ResponseFuture<$0.LuminosityReply> sayLuminosity(
      $0.LuminosityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sayLuminosity, request, options: options);
  }
}

abstract class IoTServiceBase extends $grpc.Service {
  $core.String get $name => 'IoTService';

  IoTServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Credentials, $0.AddNewUserReply>(
        'AddNewUser',
        addNewUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Credentials.fromBuffer(value),
        ($0.AddNewUserReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Credentials, $0.Token>(
        'GetAccessToken',
        getAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Credentials.fromBuffer(value),
        ($0.Token value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRegionsRequest, $0.RegionsReply>(
        'GetRegions',
        getRegions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRegionsRequest.fromBuffer(value),
        ($0.RegionsReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddRegionRequest, $0.AddRegionReply>(
        'AddRegion',
        addRegion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddRegionRequest.fromBuffer(value),
        ($0.AddRegionReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RemoveRegionRequest, $0.RemoveRegionReply>(
            'RemoveRegion',
            removeRegion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RemoveRegionRequest.fromBuffer(value),
            ($0.RemoveRegionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetLastRouteRequest, $0.RouteReply>(
        'GetLastRoute',
        getLastRoute_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetLastRouteRequest.fromBuffer(value),
        ($0.RouteReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetRouteRequest, $0.SetRouteReply>(
        'SetRoute',
        setRoute_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetRouteRequest.fromBuffer(value),
        ($0.SetRouteReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TemperatureRequest, $0.TemperatureReply>(
        'SayTemperature',
        sayTemperature_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.TemperatureRequest.fromBuffer(value),
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

  $async.Future<$0.AddNewUserReply> addNewUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Credentials> request) async {
    return addNewUser(call, await request);
  }

  $async.Future<$0.Token> getAccessToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Credentials> request) async {
    return getAccessToken(call, await request);
  }

  $async.Future<$0.RegionsReply> getRegions_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetRegionsRequest> request) async {
    return getRegions(call, await request);
  }

  $async.Future<$0.AddRegionReply> addRegion_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddRegionRequest> request) async {
    return addRegion(call, await request);
  }

  $async.Future<$0.RemoveRegionReply> removeRegion_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveRegionRequest> request) async {
    return removeRegion(call, await request);
  }

  $async.Future<$0.RouteReply> getLastRoute_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetLastRouteRequest> request) async {
    return getLastRoute(call, await request);
  }

  $async.Future<$0.SetRouteReply> setRoute_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SetRouteRequest> request) async {
    return setRoute(call, await request);
  }

  $async.Future<$0.TemperatureReply> sayTemperature_Pre($grpc.ServiceCall call,
      $async.Future<$0.TemperatureRequest> request) async {
    return sayTemperature(call, await request);
  }

  $async.Future<$0.LedReply> blinkLed_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LedRequest> request) async {
    return blinkLed(call, await request);
  }

  $async.Future<$0.LuminosityReply> sayLuminosity_Pre($grpc.ServiceCall call,
      $async.Future<$0.LuminosityRequest> request) async {
    return sayLuminosity(call, await request);
  }

  $async.Future<$0.AddNewUserReply> addNewUser(
      $grpc.ServiceCall call, $0.Credentials request);
  $async.Future<$0.Token> getAccessToken(
      $grpc.ServiceCall call, $0.Credentials request);
  $async.Future<$0.RegionsReply> getRegions(
      $grpc.ServiceCall call, $0.GetRegionsRequest request);
  $async.Future<$0.AddRegionReply> addRegion(
      $grpc.ServiceCall call, $0.AddRegionRequest request);
  $async.Future<$0.RemoveRegionReply> removeRegion(
      $grpc.ServiceCall call, $0.RemoveRegionRequest request);
  $async.Future<$0.RouteReply> getLastRoute(
      $grpc.ServiceCall call, $0.GetLastRouteRequest request);
  $async.Future<$0.SetRouteReply> setRoute(
      $grpc.ServiceCall call, $0.SetRouteRequest request);
  $async.Future<$0.TemperatureReply> sayTemperature(
      $grpc.ServiceCall call, $0.TemperatureRequest request);
  $async.Future<$0.LedReply> blinkLed(
      $grpc.ServiceCall call, $0.LedRequest request);
  $async.Future<$0.LuminosityReply> sayLuminosity(
      $grpc.ServiceCall call, $0.LuminosityRequest request);
}
