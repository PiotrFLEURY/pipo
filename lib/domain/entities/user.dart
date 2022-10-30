import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String lastName,
    required String firstName,
    required String email,
    required String picture,
  }) = _User;
}

extension UserExtension on User {
  String get fullName => '$firstName $lastName';
}
