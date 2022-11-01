import 'package:dio/dio.dart';
import 'package:pipo/data/models/models.dart';
import 'package:retrofit/http.dart';

part 'random_user_api.g.dart';

@RestApi(baseUrl: 'http://localhost:8080/')
abstract class RandomUserApi {
  factory RandomUserApi(Dio dio, {String baseUrl}) = _RandomUserApi;

  @GET('/user')
  Future<RandomUserResponse> getRandomUsers(
    @Query('results') int? results,
  );
}
