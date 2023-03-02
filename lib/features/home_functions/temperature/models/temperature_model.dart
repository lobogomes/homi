import 'dart:convert';

class TemperatureModel {
  final double temperature;

  TemperatureModel({
    required this.temperature,
  });

  TemperatureModel copyWith({
    double? temperature,
  }) {
    return TemperatureModel(
      temperature: temperature ?? this.temperature,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temperature': temperature,
    };
  }

  factory TemperatureModel.fromMap(Map<String, dynamic> map) {
    return TemperatureModel(
      temperature: map['temperature']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory TemperatureModel.fromJson(String source) =>
      TemperatureModel.fromMap(json.decode(source));

  @override
  String toString() => 'TemperatureModel(temperature: $temperature)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TemperatureModel && other.temperature == temperature;
  }

  @override
  int get hashCode => temperature.hashCode;
}
