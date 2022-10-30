import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pipo/data/models/random_user/random_user.dart';

part 'random_user_response.freezed.dart';
part 'random_user_response.g.dart';

@freezed
class RandomUserResponse with _$RandomUserResponse {
  const factory RandomUserResponse({
    required List<RandomUser> results,
  }) = _RandomUserResponse;

  factory RandomUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomUserResponseFromJson(json);
}
