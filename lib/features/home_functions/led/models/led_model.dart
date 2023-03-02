import 'dart:convert';

class LedModel {
  final int state;
  LedModel({
    required this.state,
  });

  LedModel copyWith({
    int? state,
  }) {
    return LedModel(
      state: state ?? this.state,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'state': state,
    };
  }

  factory LedModel.fromMap(Map<String, dynamic> map) {
    return LedModel(
      state: map['state']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory LedModel.fromJson(String source) =>
      LedModel.fromMap(json.decode(source));

  @override
  String toString() => 'LedModel(state: $state)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LedModel && other.state == state;
  }

  @override
  int get hashCode => state.hashCode;
}
