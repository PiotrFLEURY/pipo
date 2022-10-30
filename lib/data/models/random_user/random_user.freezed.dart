// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'random_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomUser _$RandomUserFromJson(Map<String, dynamic> json) {
  return _RandomUser.fromJson(json);
}

/// @nodoc
mixin _$RandomUser {
  Name get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Picture get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomUserCopyWith<RandomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomUserCopyWith<$Res> {
  factory $RandomUserCopyWith(
          RandomUser value, $Res Function(RandomUser) then) =
      _$RandomUserCopyWithImpl<$Res, RandomUser>;
  @useResult
  $Res call({Name name, String email, Picture picture});

  $NameCopyWith<$Res> get name;
  $PictureCopyWith<$Res> get picture;
}

/// @nodoc
class _$RandomUserCopyWithImpl<$Res, $Val extends RandomUser>
    implements $RandomUserCopyWith<$Res> {
  _$RandomUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Picture,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureCopyWith<$Res> get picture {
    return $PictureCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RandomUserCopyWith<$Res>
    implements $RandomUserCopyWith<$Res> {
  factory _$$_RandomUserCopyWith(
          _$_RandomUser value, $Res Function(_$_RandomUser) then) =
      __$$_RandomUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Name name, String email, Picture picture});

  @override
  $NameCopyWith<$Res> get name;
  @override
  $PictureCopyWith<$Res> get picture;
}

/// @nodoc
class __$$_RandomUserCopyWithImpl<$Res>
    extends _$RandomUserCopyWithImpl<$Res, _$_RandomUser>
    implements _$$_RandomUserCopyWith<$Res> {
  __$$_RandomUserCopyWithImpl(
      _$_RandomUser _value, $Res Function(_$_RandomUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? picture = null,
  }) {
    return _then(_$_RandomUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as Picture,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RandomUser implements _RandomUser {
  const _$_RandomUser(
      {required this.name, required this.email, required this.picture});

  factory _$_RandomUser.fromJson(Map<String, dynamic> json) =>
      _$$_RandomUserFromJson(json);

  @override
  final Name name;
  @override
  final String email;
  @override
  final Picture picture;

  @override
  String toString() {
    return 'RandomUser(name: $name, email: $email, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomUserCopyWith<_$_RandomUser> get copyWith =>
      __$$_RandomUserCopyWithImpl<_$_RandomUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RandomUserToJson(
      this,
    );
  }
}

abstract class _RandomUser implements RandomUser {
  const factory _RandomUser(
      {required final Name name,
      required final String email,
      required final Picture picture}) = _$_RandomUser;

  factory _RandomUser.fromJson(Map<String, dynamic> json) =
      _$_RandomUser.fromJson;

  @override
  Name get name;
  @override
  String get email;
  @override
  Picture get picture;
  @override
  @JsonKey(ignore: true)
  _$$_RandomUserCopyWith<_$_RandomUser> get copyWith =>
      throw _privateConstructorUsedError;
}
