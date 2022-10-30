import 'package:freezed_annotation/freezed_annotation.dart';

part 'pipo_model.freezed.dart';
part 'pipo_model.g.dart';

@freezed
class PipoModel with _$PipoModel {
  const factory PipoModel({
    required String pipo,
  }) = _PipoModel;

  factory PipoModel.fromJson(Map<String, dynamic> json) =>
      _$PipoModelFromJson(json);
}
