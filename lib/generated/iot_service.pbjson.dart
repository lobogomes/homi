///
//  Generated code. Do not modify.
//  source: iot_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getRegionsRequestDescriptor instead')
const GetRegionsRequest$json = const {
  '1': 'GetRegionsRequest',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `GetRegionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRegionsRequestDescriptor = $convert.base64Decode('ChFHZXRSZWdpb25zUmVxdWVzdBIgCgthY2Nlc3NUb2tlbhgBIAEoCVILYWNjZXNzVG9rZW4=');
@$core.Deprecated('Use regionDescriptor instead')
const Region$json = const {
  '1': 'Region',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'icon', '3': 2, '4': 1, '5': 9, '10': 'icon'},
  ],
};

/// Descriptor for `Region`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regionDescriptor = $convert.base64Decode('CgZSZWdpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRpY29uGAIgASgJUgRpY29u');
@$core.Deprecated('Use regionsReplyDescriptor instead')
const RegionsReply$json = const {
  '1': 'RegionsReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'regions', '3': 2, '4': 3, '5': 11, '6': '.Region', '10': 'regions'},
  ],
};

/// Descriptor for `RegionsReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regionsReplyDescriptor = $convert.base64Decode('CgxSZWdpb25zUmVwbHkSFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSIQoHcmVnaW9ucxgCIAMoCzIHLlJlZ2lvblIHcmVnaW9ucw==');
@$core.Deprecated('Use addRegionRequestDescriptor instead')
const AddRegionRequest$json = const {
  '1': 'AddRegionRequest',
  '2': const [
    const {'1': 'region', '3': 1, '4': 1, '5': 11, '6': '.Region', '10': 'region'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `AddRegionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRegionRequestDescriptor = $convert.base64Decode('ChBBZGRSZWdpb25SZXF1ZXN0Eh8KBnJlZ2lvbhgBIAEoCzIHLlJlZ2lvblIGcmVnaW9uEiAKC2FjY2Vzc1Rva2VuGAIgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use addRegionReplyDescriptor instead')
const AddRegionReply$json = const {
  '1': 'AddRegionReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `AddRegionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRegionReplyDescriptor = $convert.base64Decode('Cg5BZGRSZWdpb25SZXBseRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');
@$core.Deprecated('Use removeRegionRequestDescriptor instead')
const RemoveRegionRequest$json = const {
  '1': 'RemoveRegionRequest',
  '2': const [
    const {'1': 'region', '3': 1, '4': 1, '5': 11, '6': '.Region', '10': 'region'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `RemoveRegionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRegionRequestDescriptor = $convert.base64Decode('ChNSZW1vdmVSZWdpb25SZXF1ZXN0Eh8KBnJlZ2lvbhgBIAEoCzIHLlJlZ2lvblIGcmVnaW9uEiAKC2FjY2Vzc1Rva2VuGAIgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use removeRegionReplyDescriptor instead')
const RemoveRegionReply$json = const {
  '1': 'RemoveRegionReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `RemoveRegionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeRegionReplyDescriptor = $convert.base64Decode('ChFSZW1vdmVSZWdpb25SZXBseRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');
@$core.Deprecated('Use getLastRouteRequestDescriptor instead')
const GetLastRouteRequest$json = const {
  '1': 'GetLastRouteRequest',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `GetLastRouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLastRouteRequestDescriptor = $convert.base64Decode('ChNHZXRMYXN0Um91dGVSZXF1ZXN0EiAKC2FjY2Vzc1Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use routeReplyDescriptor instead')
const RouteReply$json = const {
  '1': 'RouteReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'route', '3': 2, '4': 1, '5': 9, '10': 'route'},
    const {'1': 'args', '3': 3, '4': 1, '5': 9, '10': 'args'},
  ],
};

/// Descriptor for `RouteReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeReplyDescriptor = $convert.base64Decode('CgpSb3V0ZVJlcGx5EhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEhQKBXJvdXRlGAIgASgJUgVyb3V0ZRISCgRhcmdzGAMgASgJUgRhcmdz');
@$core.Deprecated('Use setRouteRequestDescriptor instead')
const SetRouteRequest$json = const {
  '1': 'SetRouteRequest',
  '2': const [
    const {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'route', '3': 2, '4': 1, '5': 9, '10': 'route'},
    const {'1': 'args', '3': 3, '4': 1, '5': 9, '10': 'args'},
  ],
};

/// Descriptor for `SetRouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRouteRequestDescriptor = $convert.base64Decode('Cg9TZXRSb3V0ZVJlcXVlc3QSIAoLYWNjZXNzVG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEhQKBXJvdXRlGAIgASgJUgVyb3V0ZRISCgRhcmdzGAMgASgJUgRhcmdz');
@$core.Deprecated('Use setRouteReplyDescriptor instead')
const SetRouteReply$json = const {
  '1': 'SetRouteReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `SetRouteReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setRouteReplyDescriptor = $convert.base64Decode('Cg1TZXRSb3V0ZVJlcGx5EhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVz');
@$core.Deprecated('Use credentialsDescriptor instead')
const Credentials$json = const {
  '1': 'Credentials',
  '2': const [
    const {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `Credentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List credentialsDescriptor = $convert.base64Decode('CgtDcmVkZW50aWFscxIUCgVsb2dpbhgBIAEoCVIFbG9naW4SGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use addNewUserReplyDescriptor instead')
const AddNewUserReply$json = const {
  '1': 'AddNewUserReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `AddNewUserReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addNewUserReplyDescriptor = $convert.base64Decode('Cg9BZGROZXdVc2VyUmVwbHkSFgoGc3RhdHVzGAEgASgJUgZzdGF0dXM=');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use temperatureRequestDescriptor instead')
const TemperatureRequest$json = const {
  '1': 'TemperatureRequest',
  '2': const [
    const {'1': 'sensorName', '3': 1, '4': 1, '5': 9, '10': 'sensorName'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `TemperatureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureRequestDescriptor = $convert.base64Decode('ChJUZW1wZXJhdHVyZVJlcXVlc3QSHgoKc2Vuc29yTmFtZRgBIAEoCVIKc2Vuc29yTmFtZRIgCgthY2Nlc3NUb2tlbhgCIAEoCVILYWNjZXNzVG9rZW4=');
@$core.Deprecated('Use temperatureReplyDescriptor instead')
const TemperatureReply$json = const {
  '1': 'TemperatureReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'temperature', '3': 2, '4': 1, '5': 9, '10': 'temperature'},
  ],
};

/// Descriptor for `TemperatureReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureReplyDescriptor = $convert.base64Decode('ChBUZW1wZXJhdHVyZVJlcGx5EhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEiAKC3RlbXBlcmF0dXJlGAIgASgJUgt0ZW1wZXJhdHVyZQ==');
@$core.Deprecated('Use ledRequestDescriptor instead')
const LedRequest$json = const {
  '1': 'LedRequest',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 13, '10': 'state'},
    const {'1': 'sensorName', '3': 2, '4': 1, '5': 9, '10': 'sensorName'},
    const {'1': 'accessToken', '3': 3, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `LedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledRequestDescriptor = $convert.base64Decode('CgpMZWRSZXF1ZXN0EhQKBXN0YXRlGAEgASgNUgVzdGF0ZRIeCgpzZW5zb3JOYW1lGAIgASgJUgpzZW5zb3JOYW1lEiAKC2FjY2Vzc1Rva2VuGAMgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use ledReplyDescriptor instead')
const LedReply$json = const {
  '1': 'LedReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'ledstate', '3': 2, '4': 3, '5': 11, '6': '.LedReply.LedstateEntry', '10': 'ledstate'},
  ],
  '3': const [LedReply_LedstateEntry$json],
};

@$core.Deprecated('Use ledReplyDescriptor instead')
const LedReply_LedstateEntry$json = const {
  '1': 'LedstateEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `LedReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ledReplyDescriptor = $convert.base64Decode('CghMZWRSZXBseRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIzCghsZWRzdGF0ZRgCIAMoCzIXLkxlZFJlcGx5LkxlZHN0YXRlRW50cnlSCGxlZHN0YXRlGjsKDUxlZHN0YXRlRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA1SBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use luminosityRequestDescriptor instead')
const LuminosityRequest$json = const {
  '1': 'LuminosityRequest',
  '2': const [
    const {'1': 'sensorName', '3': 1, '4': 1, '5': 9, '10': 'sensorName'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `LuminosityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luminosityRequestDescriptor = $convert.base64Decode('ChFMdW1pbm9zaXR5UmVxdWVzdBIeCgpzZW5zb3JOYW1lGAEgASgJUgpzZW5zb3JOYW1lEiAKC2FjY2Vzc1Rva2VuGAIgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use luminosityReplyDescriptor instead')
const LuminosityReply$json = const {
  '1': 'LuminosityReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'luminosity', '3': 2, '4': 1, '5': 9, '10': 'luminosity'},
  ],
};

/// Descriptor for `LuminosityReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luminosityReplyDescriptor = $convert.base64Decode('Cg9MdW1pbm9zaXR5UmVwbHkSFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSHgoKbHVtaW5vc2l0eRgCIAEoCVIKbHVtaW5vc2l0eQ==');
