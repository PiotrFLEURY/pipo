import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipo/data/models/models.dart';

part 'random_user.freezed.dart';
part 'random_user.g.dart';

@freezed
class RandomUser with _$RandomUser {
  const factory RandomUser({
    required Name name,
    required String email,
    required Picture picture,
  }) = _RandomUser;

  factory RandomUser.fromJson(Map<String, dynamic> json) =>
      _$RandomUserFromJson(json);
}
