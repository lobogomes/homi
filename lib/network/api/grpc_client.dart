import 'package:grpc/grpc.dart';
import 'package:homi/generated/iot_service.pbgrpc.dart';

class GRPCClient {
  GRPCClient._();
  static GRPCClient? _instance;
  static GRPCClient get instance => _instance ??= GRPCClient._();

  IoTServiceClient get stub {
    final ClientChannel channel = ClientChannel(
      '35.247.238.84',
      port: 50051,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    return IoTServiceClient(channel);
  }
}
