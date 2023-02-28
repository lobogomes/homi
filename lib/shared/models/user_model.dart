import 'dart:convert';

class UserModel {
  final String token;
  final String nome;

  UserModel({
    required this.token,
    required this.nome,
  });

  UserModel copyWith({
    String? token,
    String? nome,
  }) {
    return UserModel(
      token: token ?? this.token,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'token': token,
      'nome': nome,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      token: map['token'] ?? '',
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(token: $token, nome: $nome)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel && other.token == token && other.nome == nome;
  }

  @override
  int get hashCode => token.hashCode ^ nome.hashCode;
}
