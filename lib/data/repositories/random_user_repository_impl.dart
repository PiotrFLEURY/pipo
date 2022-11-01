import 'package:pipo/data/sources/random_user_api.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/domain/repositories/user_repository.dart';

class RandomUserRepositoryImpl with UserRepository {
  final RandomUserApi _randomUserApi;

  User? latestUser;

  RandomUserRepositoryImpl(this._randomUserApi);

  @override
  Future<User> getRandomUser() async {
    final randomUserResponse = await _randomUserApi.getRandomUsers(1);
    final userPictureUri =
        Uri.parse(randomUserResponse.results.first.picture.large);
    latestUser = User(
      firstName: randomUserResponse.results.first.name.first,
      lastName: randomUserResponse.results.first.name.last,
      email: randomUserResponse.results.first.email,
      picture: userPictureUri.replace(
        scheme: 'http',
        host: 'localhost',
        port: 8080,
        path: '/user_picture',
        queryParameters: {'path': userPictureUri.path},
      ).toString(),
    );
    return latestUser!;
  }
}
