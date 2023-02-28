///
//  Generated code. Do not modify.
//  source: iot_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Credentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Credentials',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'login')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false;

  Credentials._() : super();
  factory Credentials({
    $core.String? login,
    $core.String? password,
  }) {
    final _result = create();
    if (login != null) {
      _result.login = login;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory Credentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Credentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Credentials clone() => Credentials()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Credentials copyWith(void Function(Credentials) updates) =>
      super.copyWith((message) => updates(message as Credentials)) as Credentials; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Credentials create() => Credentials._();
  Credentials createEmptyInstance() => create();
  static $pb.PbList<Credentials> createRepeated() => $pb.PbList<Credentials>();
  @$core.pragma('dart2js:noInline')
  static Credentials getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Credentials>(create);
  static Credentials? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get login => $_getSZ(0);
  @$pb.TagNumber(1)
  set login($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Token',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false;

  Token._() : super();
  factory Token({
    $core.String? status,
    $core.String? token,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) =>
      super.copyWith((message) => updates(message as Token)) as Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class TemperatureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemperatureRequest',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorName', protoName: 'sensorName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken',
        protoName: 'accessToken')
    ..hasRequiredFields = false;

  TemperatureRequest._() : super();
  factory TemperatureRequest({
    $core.String? sensorName,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (sensorName != null) {
      _result.sensorName = sensorName;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory TemperatureRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemperatureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemperatureRequest clone() => TemperatureRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemperatureRequest copyWith(void Function(TemperatureRequest) updates) =>
      super.copyWith((message) => updates(message as TemperatureRequest))
          as TemperatureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemperatureRequest create() => TemperatureRequest._();
  TemperatureRequest createEmptyInstance() => create();
  static $pb.PbList<TemperatureRequest> createRepeated() => $pb.PbList<TemperatureRequest>();
  @$core.pragma('dart2js:noInline')
  static TemperatureRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemperatureRequest>(create);
  static TemperatureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sensorName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSensorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class TemperatureReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemperatureReply',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temperature')
    ..hasRequiredFields = false;

  TemperatureReply._() : super();
  factory TemperatureReply({
    $core.String? status,
    $core.String? temperature,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (temperature != null) {
      _result.temperature = temperature;
    }
    return _result;
  }
  factory TemperatureReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TemperatureReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TemperatureReply clone() => TemperatureReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TemperatureReply copyWith(void Function(TemperatureReply) updates) =>
      super.copyWith((message) => updates(message as TemperatureReply))
          as TemperatureReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemperatureReply create() => TemperatureReply._();
  TemperatureReply createEmptyInstance() => create();
  static $pb.PbList<TemperatureReply> createRepeated() => $pb.PbList<TemperatureReply>();
  @$core.pragma('dart2js:noInline')
  static TemperatureReply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemperatureReply>(create);
  static TemperatureReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get temperature => $_getSZ(1);
  @$pb.TagNumber(2)
  set temperature($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => clearField(2);
}

class LedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LedRequest',
      createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorName', protoName: 'sensorName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken',
        protoName: 'accessToken')
    ..hasRequiredFields = false;

  LedRequest._() : super();
  factory LedRequest({
    $core.int? state,
    $core.String? sensorName,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (sensorName != null) {
      _result.sensorName = sensorName;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory LedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedRequest clone() => LedRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedRequest copyWith(void Function(LedRequest) updates) =>
      super.copyWith((message) => updates(message as LedRequest)) as LedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LedRequest create() => LedRequest._();
  LedRequest createEmptyInstance() => create();
  static $pb.PbList<LedRequest> createRepeated() => $pb.PbList<LedRequest>();
  @$core.pragma('dart2js:noInline')
  static LedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedRequest>(create);
  static LedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sensorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sensorName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSensorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSensorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAccessToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessToken() => clearField(3);
}

class LedReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LedReply',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..m<$core.String, $core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ledstate',
        entryClassName: 'LedReply.LedstateEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  LedReply._() : super();
  factory LedReply({
    $core.String? status,
    $core.Map<$core.String, $core.int>? ledstate,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (ledstate != null) {
      _result.ledstate.addAll(ledstate);
    }
    return _result;
  }
  factory LedReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LedReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LedReply clone() => LedReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LedReply copyWith(void Function(LedReply) updates) =>
      super.copyWith((message) => updates(message as LedReply)) as LedReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LedReply create() => LedReply._();
  LedReply createEmptyInstance() => create();
  static $pb.PbList<LedReply> createRepeated() => $pb.PbList<LedReply>();
  @$core.pragma('dart2js:noInline')
  static LedReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LedReply>(create);
  static LedReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.int> get ledstate => $_getMap(1);
}

class LuminosityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LuminosityRequest',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorName', protoName: 'sensorName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken',
        protoName: 'accessToken')
    ..hasRequiredFields = false;

  LuminosityRequest._() : super();
  factory LuminosityRequest({
    $core.String? sensorName,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (sensorName != null) {
      _result.sensorName = sensorName;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory LuminosityRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LuminosityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LuminosityRequest clone() => LuminosityRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LuminosityRequest copyWith(void Function(LuminosityRequest) updates) =>
      super.copyWith((message) => updates(message as LuminosityRequest))
          as LuminosityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LuminosityRequest create() => LuminosityRequest._();
  LuminosityRequest createEmptyInstance() => create();
  static $pb.PbList<LuminosityRequest> createRepeated() => $pb.PbList<LuminosityRequest>();
  @$core.pragma('dart2js:noInline')
  static LuminosityRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuminosityRequest>(create);
  static LuminosityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sensorName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSensorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class LuminosityReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LuminosityReply',
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'luminosity')
    ..hasRequiredFields = false;

  LuminosityReply._() : super();
  factory LuminosityReply({
    $core.String? status,
    $core.String? luminosity,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (luminosity != null) {
      _result.luminosity = luminosity;
    }
    return _result;
  }
  factory LuminosityReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LuminosityReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  LuminosityReply clone() => LuminosityReply()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  LuminosityReply copyWith(void Function(LuminosityReply) updates) =>
      super.copyWith((message) => updates(message as LuminosityReply))
          as LuminosityReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LuminosityReply create() => LuminosityReply._();
  LuminosityReply createEmptyInstance() => create();
  static $pb.PbList<LuminosityReply> createRepeated() => $pb.PbList<LuminosityReply>();
  @$core.pragma('dart2js:noInline')
  static LuminosityReply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuminosityReply>(create);
  static LuminosityReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get luminosity => $_getSZ(1);
  @$pb.TagNumber(2)
  set luminosity($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLuminosity() => $_has(1);
  @$pb.TagNumber(2)
  void clearLuminosity() => clearField(2);
}
