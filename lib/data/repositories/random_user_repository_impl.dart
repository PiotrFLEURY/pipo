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
    latestUser = User(
      firstName: randomUserResponse.results.first.name.first,
      lastName: randomUserResponse.results.first.name.last,
      email: randomUserResponse.results.first.email,
      picture: randomUserResponse.results.first.picture.large,
    );
    return latestUser!;
  }
}
