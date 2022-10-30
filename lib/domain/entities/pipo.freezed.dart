// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pipo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pipo {
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PipoCopyWith<Pipo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PipoCopyWith<$Res> {
  factory $PipoCopyWith(Pipo value, $Res Function(Pipo) then) =
      _$PipoCopyWithImpl<$Res, Pipo>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$PipoCopyWithImpl<$Res, $Val extends Pipo>
    implements $PipoCopyWith<$Res> {
  _$PipoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PipoCopyWith<$Res> implements $PipoCopyWith<$Res> {
  factory _$$_PipoCopyWith(_$_Pipo value, $Res Function(_$_Pipo) then) =
      __$$_PipoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_PipoCopyWithImpl<$Res> extends _$PipoCopyWithImpl<$Res, _$_Pipo>
    implements _$$_PipoCopyWith<$Res> {
  __$$_PipoCopyWithImpl(_$_Pipo _value, $Res Function(_$_Pipo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_Pipo(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Pipo implements _Pipo {
  const _$_Pipo({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'Pipo(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pipo &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PipoCopyWith<_$_Pipo> get copyWith =>
      __$$_PipoCopyWithImpl<_$_Pipo>(this, _$identity);
}

abstract class _Pipo implements Pipo {
  const factory _Pipo({required final String text}) = _$_Pipo;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_PipoCopyWith<_$_Pipo> get copyWith => throw _privateConstructorUsedError;
}
