import 'package:dio/dio.dart';
import 'package:pipo/data/models/models.dart';
import 'package:retrofit/http.dart';

part 'random_user_api.g.dart';

@RestApi(baseUrl: 'https://randomuser.me/api/')
abstract class RandomUserApi {
  factory RandomUserApi(Dio dio, {String baseUrl}) = _RandomUserApi;

  @GET('/')
  Future<RandomUserResponse> getRandomUsers(
    @Query('results') int? results,
  );
}
