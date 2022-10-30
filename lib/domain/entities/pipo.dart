import 'package:freezed_annotation/freezed_annotation.dart';

part 'pipo.freezed.dart';

@freezed
class Pipo with _$Pipo {
  const factory Pipo({
    required String text,
  }) = _Pipo;
}
