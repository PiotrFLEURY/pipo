import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';

@freezed
class Configuration with _$Configuration {
  const factory Configuration({
    required String backendUrl,
  }) = _Configuration;

  static Configuration fromJson(Map<String, Object?> json) {
    return Configuration(
      backendUrl: json['backendUrl'] as String? ?? 'http://localhost/',
    );
  }
}
