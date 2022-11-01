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
    final randomUser = randomUserResponse.results.first;
    latestUser = User(
      firstName: randomUser.name.first,
      lastName: randomUser.name.last,
      email: randomUser.email,
      picture: randomUser.picture.large,
    );
    return latestUser!;
  }
}
