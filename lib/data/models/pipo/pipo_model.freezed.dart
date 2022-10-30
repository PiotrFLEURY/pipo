// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pipo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PipoModel _$PipoModelFromJson(Map<String, dynamic> json) {
  return _PipoModel.fromJson(json);
}

/// @nodoc
mixin _$PipoModel {
  String get pipo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PipoModelCopyWith<PipoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PipoModelCopyWith<$Res> {
  factory $PipoModelCopyWith(PipoModel value, $Res Function(PipoModel) then) =
      _$PipoModelCopyWithImpl<$Res, PipoModel>;
  @useResult
  $Res call({String pipo});
}

/// @nodoc
class _$PipoModelCopyWithImpl<$Res, $Val extends PipoModel>
    implements $PipoModelCopyWith<$Res> {
  _$PipoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipo = null,
  }) {
    return _then(_value.copyWith(
      pipo: null == pipo
          ? _value.pipo
          : pipo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PipoModelCopyWith<$Res> implements $PipoModelCopyWith<$Res> {
  factory _$$_PipoModelCopyWith(
          _$_PipoModel value, $Res Function(_$_PipoModel) then) =
      __$$_PipoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pipo});
}

/// @nodoc
class __$$_PipoModelCopyWithImpl<$Res>
    extends _$PipoModelCopyWithImpl<$Res, _$_PipoModel>
    implements _$$_PipoModelCopyWith<$Res> {
  __$$_PipoModelCopyWithImpl(
      _$_PipoModel _value, $Res Function(_$_PipoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pipo = null,
  }) {
    return _then(_$_PipoModel(
      pipo: null == pipo
          ? _value.pipo
          : pipo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PipoModel implements _PipoModel {
  const _$_PipoModel({required this.pipo});

  factory _$_PipoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PipoModelFromJson(json);

  @override
  final String pipo;

  @override
  String toString() {
    return 'PipoModel(pipo: $pipo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PipoModel &&
            (identical(other.pipo, pipo) || other.pipo == pipo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pipo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PipoModelCopyWith<_$_PipoModel> get copyWith =>
      __$$_PipoModelCopyWithImpl<_$_PipoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PipoModelToJson(
      this,
    );
  }
}

abstract class _PipoModel implements PipoModel {
  const factory _PipoModel({required final String pipo}) = _$_PipoModel;

  factory _PipoModel.fromJson(Map<String, dynamic> json) =
      _$_PipoModel.fromJson;

  @override
  String get pipo;
  @override
  @JsonKey(ignore: true)
  _$$_PipoModelCopyWith<_$_PipoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
