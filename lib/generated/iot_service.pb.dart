///
//  Generated code. Do not modify.
//  source: iot_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetRegionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRegionsRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  GetRegionsRequest._() : super();
  factory GetRegionsRequest({
    $core.String? accessToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory GetRegionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRegionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRegionsRequest clone() => GetRegionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRegionsRequest copyWith(void Function(GetRegionsRequest) updates) => super.copyWith((message) => updates(message as GetRegionsRequest)) as GetRegionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRegionsRequest create() => GetRegionsRequest._();
  GetRegionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRegionsRequest> createRepeated() => $pb.PbList<GetRegionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRegionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRegionsRequest>(create);
  static GetRegionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
}

class Region extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Region', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'icon')
    ..hasRequiredFields = false
  ;

  Region._() : super();
  factory Region({
    $core.String? name,
    $core.String? icon,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (icon != null) {
      _result.icon = icon;
    }
    return _result;
  }
  factory Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Region clone() => Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Region copyWith(void Function(Region) updates) => super.copyWith((message) => updates(message as Region)) as Region; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Region create() => Region._();
  Region createEmptyInstance() => create();
  static $pb.PbList<Region> createRepeated() => $pb.PbList<Region>();
  @$core.pragma('dart2js:noInline')
  static Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Region>(create);
  static Region? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get icon => $_getSZ(1);
  @$pb.TagNumber(2)
  set icon($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIcon() => $_has(1);
  @$pb.TagNumber(2)
  void clearIcon() => clearField(2);
}

class RegionsReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegionsReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..pc<Region>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'regions', $pb.PbFieldType.PM, subBuilder: Region.create)
    ..hasRequiredFields = false
  ;

  RegionsReply._() : super();
  factory RegionsReply({
    $core.String? status,
    $core.Iterable<Region>? regions,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (regions != null) {
      _result.regions.addAll(regions);
    }
    return _result;
  }
  factory RegionsReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegionsReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegionsReply clone() => RegionsReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegionsReply copyWith(void Function(RegionsReply) updates) => super.copyWith((message) => updates(message as RegionsReply)) as RegionsReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegionsReply create() => RegionsReply._();
  RegionsReply createEmptyInstance() => create();
  static $pb.PbList<RegionsReply> createRepeated() => $pb.PbList<RegionsReply>();
  @$core.pragma('dart2js:noInline')
  static RegionsReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegionsReply>(create);
  static RegionsReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Region> get regions => $_getList(1);
}

class AddRegionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddRegionRequest', createEmptyInstance: create)
    ..aOM<Region>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region', subBuilder: Region.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  AddRegionRequest._() : super();
  factory AddRegionRequest({
    Region? region,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (region != null) {
      _result.region = region;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory AddRegionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRegionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRegionRequest clone() => AddRegionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRegionRequest copyWith(void Function(AddRegionRequest) updates) => super.copyWith((message) => updates(message as AddRegionRequest)) as AddRegionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRegionRequest create() => AddRegionRequest._();
  AddRegionRequest createEmptyInstance() => create();
  static $pb.PbList<AddRegionRequest> createRepeated() => $pb.PbList<AddRegionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRegionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRegionRequest>(create);
  static AddRegionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Region get region => $_getN(0);
  @$pb.TagNumber(1)
  set region(Region v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRegion() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegion() => clearField(1);
  @$pb.TagNumber(1)
  Region ensureRegion() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class AddRegionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddRegionReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  AddRegionReply._() : super();
  factory AddRegionReply({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AddRegionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRegionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRegionReply clone() => AddRegionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRegionReply copyWith(void Function(AddRegionReply) updates) => super.copyWith((message) => updates(message as AddRegionReply)) as AddRegionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRegionReply create() => AddRegionReply._();
  AddRegionReply createEmptyInstance() => create();
  static $pb.PbList<AddRegionReply> createRepeated() => $pb.PbList<AddRegionReply>();
  @$core.pragma('dart2js:noInline')
  static AddRegionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRegionReply>(create);
  static AddRegionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class RemoveRegionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveRegionRequest', createEmptyInstance: create)
    ..aOM<Region>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region', subBuilder: Region.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  RemoveRegionRequest._() : super();
  factory RemoveRegionRequest({
    Region? region,
    $core.String? accessToken,
  }) {
    final _result = create();
    if (region != null) {
      _result.region = region;
    }
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory RemoveRegionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRegionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveRegionRequest clone() => RemoveRegionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveRegionRequest copyWith(void Function(RemoveRegionRequest) updates) => super.copyWith((message) => updates(message as RemoveRegionRequest)) as RemoveRegionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRegionRequest create() => RemoveRegionRequest._();
  RemoveRegionRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveRegionRequest> createRepeated() => $pb.PbList<RemoveRegionRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveRegionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRegionRequest>(create);
  static RemoveRegionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Region get region => $_getN(0);
  @$pb.TagNumber(1)
  set region(Region v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRegion() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegion() => clearField(1);
  @$pb.TagNumber(1)
  Region ensureRegion() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class RemoveRegionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveRegionReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  RemoveRegionReply._() : super();
  factory RemoveRegionReply({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory RemoveRegionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRegionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveRegionReply clone() => RemoveRegionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveRegionReply copyWith(void Function(RemoveRegionReply) updates) => super.copyWith((message) => updates(message as RemoveRegionReply)) as RemoveRegionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveRegionReply create() => RemoveRegionReply._();
  RemoveRegionReply createEmptyInstance() => create();
  static $pb.PbList<RemoveRegionReply> createRepeated() => $pb.PbList<RemoveRegionReply>();
  @$core.pragma('dart2js:noInline')
  static RemoveRegionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRegionReply>(create);
  static RemoveRegionReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class GetLastRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLastRouteRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

  GetLastRouteRequest._() : super();
  factory GetLastRouteRequest({
    $core.String? accessToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory GetLastRouteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLastRouteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLastRouteRequest clone() => GetLastRouteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLastRouteRequest copyWith(void Function(GetLastRouteRequest) updates) => super.copyWith((message) => updates(message as GetLastRouteRequest)) as GetLastRouteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLastRouteRequest create() => GetLastRouteRequest._();
  GetLastRouteRequest createEmptyInstance() => create();
  static $pb.PbList<GetLastRouteRequest> createRepeated() => $pb.PbList<GetLastRouteRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLastRouteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLastRouteRequest>(create);
  static GetLastRouteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
}

class RouteReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RouteReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'args')
    ..hasRequiredFields = false
  ;

  RouteReply._() : super();
  factory RouteReply({
    $core.String? status,
    $core.String? route,
    $core.String? args,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (route != null) {
      _result.route = route;
    }
    if (args != null) {
      _result.args = args;
    }
    return _result;
  }
  factory RouteReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteReply clone() => RouteReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteReply copyWith(void Function(RouteReply) updates) => super.copyWith((message) => updates(message as RouteReply)) as RouteReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteReply create() => RouteReply._();
  RouteReply createEmptyInstance() => create();
  static $pb.PbList<RouteReply> createRepeated() => $pb.PbList<RouteReply>();
  @$core.pragma('dart2js:noInline')
  static RouteReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteReply>(create);
  static RouteReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get route => $_getSZ(1);
  @$pb.TagNumber(2)
  set route($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoute() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoute() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get args => $_getSZ(2);
  @$pb.TagNumber(3)
  set args($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArgs() => $_has(2);
  @$pb.TagNumber(3)
  void clearArgs() => clearField(3);
}

class SetRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetRouteRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'args')
    ..hasRequiredFields = false
  ;

  SetRouteRequest._() : super();
  factory SetRouteRequest({
    $core.String? accessToken,
    $core.String? route,
    $core.String? args,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (route != null) {
      _result.route = route;
    }
    if (args != null) {
      _result.args = args;
    }
    return _result;
  }
  factory SetRouteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRouteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRouteRequest clone() => SetRouteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRouteRequest copyWith(void Function(SetRouteRequest) updates) => super.copyWith((message) => updates(message as SetRouteRequest)) as SetRouteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetRouteRequest create() => SetRouteRequest._();
  SetRouteRequest createEmptyInstance() => create();
  static $pb.PbList<SetRouteRequest> createRepeated() => $pb.PbList<SetRouteRequest>();
  @$core.pragma('dart2js:noInline')
  static SetRouteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRouteRequest>(create);
  static SetRouteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get route => $_getSZ(1);
  @$pb.TagNumber(2)
  set route($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoute() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoute() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get args => $_getSZ(2);
  @$pb.TagNumber(3)
  set args($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArgs() => $_has(2);
  @$pb.TagNumber(3)
  void clearArgs() => clearField(3);
}

class SetRouteReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetRouteReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  SetRouteReply._() : super();
  factory SetRouteReply({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory SetRouteReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRouteReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRouteReply clone() => SetRouteReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRouteReply copyWith(void Function(SetRouteReply) updates) => super.copyWith((message) => updates(message as SetRouteReply)) as SetRouteReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetRouteReply create() => SetRouteReply._();
  SetRouteReply createEmptyInstance() => create();
  static $pb.PbList<SetRouteReply> createRepeated() => $pb.PbList<SetRouteReply>();
  @$core.pragma('dart2js:noInline')
  static SetRouteReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRouteReply>(create);
  static SetRouteReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class Credentials extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Credentials', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'login')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

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
  factory Credentials.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Credentials.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Credentials clone() => Credentials()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Credentials copyWith(void Function(Credentials) updates) => super.copyWith((message) => updates(message as Credentials)) as Credentials; // ignore: deprecated_member_use
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
  set login($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogin() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogin() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class AddNewUserReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddNewUserReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  AddNewUserReply._() : super();
  factory AddNewUserReply({
    $core.String? status,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory AddNewUserReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddNewUserReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddNewUserReply clone() => AddNewUserReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddNewUserReply copyWith(void Function(AddNewUserReply) updates) => super.copyWith((message) => updates(message as AddNewUserReply)) as AddNewUserReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddNewUserReply create() => AddNewUserReply._();
  AddNewUserReply createEmptyInstance() => create();
  static $pb.PbList<AddNewUserReply> createRepeated() => $pb.PbList<AddNewUserReply>();
  @$core.pragma('dart2js:noInline')
  static AddNewUserReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddNewUserReply>(create);
  static AddNewUserReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Token', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

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
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token)) as Token; // ignore: deprecated_member_use
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
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class TemperatureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemperatureRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorName', protoName: 'sensorName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

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
  factory TemperatureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TemperatureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TemperatureRequest clone() => TemperatureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TemperatureRequest copyWith(void Function(TemperatureRequest) updates) => super.copyWith((message) => updates(message as TemperatureRequest)) as TemperatureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemperatureRequest create() => TemperatureRequest._();
  TemperatureRequest createEmptyInstance() => create();
  static $pb.PbList<TemperatureRequest> createRepeated() => $pb.PbList<TemperatureRequest>();
  @$core.pragma('dart2js:noInline')
  static TemperatureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemperatureRequest>(create);
  static TemperatureRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sensorName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSensorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class TemperatureReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemperatureReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temperature')
    ..hasRequiredFields = false
  ;

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
  factory TemperatureReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TemperatureReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TemperatureReply clone() => TemperatureReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TemperatureReply copyWith(void Function(TemperatureReply) updates) => super.copyWith((message) => updates(message as TemperatureReply)) as TemperatureReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemperatureReply create() => TemperatureReply._();
  TemperatureReply createEmptyInstance() => create();
  static $pb.PbList<TemperatureReply> createRepeated() => $pb.PbList<TemperatureReply>();
  @$core.pragma('dart2js:noInline')
  static TemperatureReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemperatureReply>(create);
  static TemperatureReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get temperature => $_getSZ(1);
  @$pb.TagNumber(2)
  set temperature($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => clearField(2);
}

class LedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LedRequest', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorName', protoName: 'sensorName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

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
  factory LedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedRequest clone() => LedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedRequest copyWith(void Function(LedRequest) updates) => super.copyWith((message) => updates(message as LedRequest)) as LedRequest; // ignore: deprecated_member_use
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
  set state($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sensorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sensorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSensorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSensorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessToken() => clearField(3);
}

class LedReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LedReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..m<$core.String, $core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ledstate', entryClassName: 'LedReply.LedstateEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

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
  factory LedReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LedReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LedReply clone() => LedReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LedReply copyWith(void Function(LedReply) updates) => super.copyWith((message) => updates(message as LedReply)) as LedReply; // ignore: deprecated_member_use
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
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.int> get ledstate => $_getMap(1);
}

class LuminosityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LuminosityRequest', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sensorName', protoName: 'sensorName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', protoName: 'accessToken')
    ..hasRequiredFields = false
  ;

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
  factory LuminosityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LuminosityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LuminosityRequest clone() => LuminosityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LuminosityRequest copyWith(void Function(LuminosityRequest) updates) => super.copyWith((message) => updates(message as LuminosityRequest)) as LuminosityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LuminosityRequest create() => LuminosityRequest._();
  LuminosityRequest createEmptyInstance() => create();
  static $pb.PbList<LuminosityRequest> createRepeated() => $pb.PbList<LuminosityRequest>();
  @$core.pragma('dart2js:noInline')
  static LuminosityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuminosityRequest>(create);
  static LuminosityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sensorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set sensorName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSensorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSensorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accessToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set accessToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessToken() => clearField(2);
}

class LuminosityReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LuminosityReply', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'luminosity')
    ..hasRequiredFields = false
  ;

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
  factory LuminosityReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LuminosityReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LuminosityReply clone() => LuminosityReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LuminosityReply copyWith(void Function(LuminosityReply) updates) => super.copyWith((message) => updates(message as LuminosityReply)) as LuminosityReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LuminosityReply create() => LuminosityReply._();
  LuminosityReply createEmptyInstance() => create();
  static $pb.PbList<LuminosityReply> createRepeated() => $pb.PbList<LuminosityReply>();
  @$core.pragma('dart2js:noInline')
  static LuminosityReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LuminosityReply>(create);
  static LuminosityReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get luminosity => $_getSZ(1);
  @$pb.TagNumber(2)
  set luminosity($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLuminosity() => $_has(1);
  @$pb.TagNumber(2)
  void clearLuminosity() => clearField(2);
}

