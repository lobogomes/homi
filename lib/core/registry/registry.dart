import 'package:flutter/material.dart';

/// {@template record}
/// A record is registered as part of the [Registry]
/// and will be lazily loaded when it is requested.
/// {@endtemplate}
class Record<T> {
  /// Responsible for returning an instance of the provided type, `T`.
  final T Function() builder;
  T? _instance;

  /// Returns instance of the provided type, `T`.
  /// `instance` will either return an existing instance
  /// or build a new `instance` if one does not exist.
  T get instance {
    _instance ??= builder();
    return _instance!;
  }

  /// {@macro record}
  Record({required this.builder});

  factory Record.value(T value) => Record(builder: () => value);
}

/// A container for [Records] which exposes APIs
/// to [register] and [resolve] individual entries.
class Registry<T> {
  final _registry = <Type, Record<T>>{};

  /// [register] adds the provided [record] to the [Registry].
  void register<S extends T>(Record<S> record) => _registry.addAll({S: record});

  /// [resolve] retrieves the instance of the requested entry by type.
  /// Throws an ArgumentError if no instance is registered for the type.
  S resolve<S extends T>() {
    final value = _registry[S]?.instance;
    if (value == null) {
      debugPrint('[Registry] Nothing registered for type $S');
      throw ArgumentError("Nothing registered for type $S.");
    }
    return value as S;
  }

  /// [resolve] retrieves the instance of the requested entry by type or null when not registered.
  S? resolveOrNull<S extends T>() => _registry[S]?.instance as S?;

  /// [clear] removes all records from the registry.
  void clear() => _registry.clear();

  /// [items] returns all registered entries within the registry.
  List<T> get items => _registry.values.map((r) => r.instance).toList();
}
