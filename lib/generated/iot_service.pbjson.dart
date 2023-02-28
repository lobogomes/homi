///
//  Generated code. Do not modify.
//  source: iot_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use credentialsDescriptor instead')
const Credentials$json = const {
  '1': 'Credentials',
  '2': const [
    const {'1': 'login', '3': 1, '4': 1, '5': 9, '10': 'login'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `Credentials`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List credentialsDescriptor =
    $convert.base64Decode('CgtDcmVkZW50aWFscxIUCgVsb2dpbhgBIAEoCVIFbG9naW4SGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor =
    $convert.base64Decode('CgVUb2tlbhIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use temperatureRequestDescriptor instead')
const TemperatureRequest$json = const {
  '1': 'TemperatureRequest',
  '2': const [
    const {'1': 'sensorName', '3': 1, '4': 1, '5': 9, '10': 'sensorName'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `TemperatureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureRequestDescriptor = $convert.base64Decode(
    'ChJUZW1wZXJhdHVyZVJlcXVlc3QSHgoKc2Vuc29yTmFtZRgBIAEoCVIKc2Vuc29yTmFtZRIgCgthY2Nlc3NUb2tlbhgCIAEoCVILYWNjZXNzVG9rZW4=');
@$core.Deprecated('Use temperatureReplyDescriptor instead')
const TemperatureReply$json = const {
  '1': 'TemperatureReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'temperature', '3': 2, '4': 1, '5': 9, '10': 'temperature'},
  ],
};

/// Descriptor for `TemperatureReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temperatureReplyDescriptor = $convert.base64Decode(
    'ChBUZW1wZXJhdHVyZVJlcGx5EhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEiAKC3RlbXBlcmF0dXJlGAIgASgJUgt0ZW1wZXJhdHVyZQ==');
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
final $typed_data.Uint8List ledRequestDescriptor = $convert.base64Decode(
    'CgpMZWRSZXF1ZXN0EhQKBXN0YXRlGAEgASgNUgVzdGF0ZRIeCgpzZW5zb3JOYW1lGAIgASgJUgpzZW5zb3JOYW1lEiAKC2FjY2Vzc1Rva2VuGAMgASgJUgthY2Nlc3NUb2tlbg==');
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
final $typed_data.Uint8List ledReplyDescriptor = $convert.base64Decode(
    'CghMZWRSZXBseRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cxIzCghsZWRzdGF0ZRgCIAMoCzIXLkxlZFJlcGx5LkxlZHN0YXRlRW50cnlSCGxlZHN0YXRlGjsKDUxlZHN0YXRlRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA1SBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use luminosityRequestDescriptor instead')
const LuminosityRequest$json = const {
  '1': 'LuminosityRequest',
  '2': const [
    const {'1': 'sensorName', '3': 1, '4': 1, '5': 9, '10': 'sensorName'},
    const {'1': 'accessToken', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `LuminosityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luminosityRequestDescriptor = $convert.base64Decode(
    'ChFMdW1pbm9zaXR5UmVxdWVzdBIeCgpzZW5zb3JOYW1lGAEgASgJUgpzZW5zb3JOYW1lEiAKC2FjY2Vzc1Rva2VuGAIgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use luminosityReplyDescriptor instead')
const LuminosityReply$json = const {
  '1': 'LuminosityReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'luminosity', '3': 2, '4': 1, '5': 9, '10': 'luminosity'},
  ],
};

/// Descriptor for `LuminosityReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List luminosityReplyDescriptor = $convert.base64Decode(
    'Cg9MdW1pbm9zaXR5UmVwbHkSFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSHgoKbHVtaW5vc2l0eRgCIAEoCVIKbHVtaW5vc2l0eQ==');
