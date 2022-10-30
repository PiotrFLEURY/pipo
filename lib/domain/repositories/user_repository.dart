import 'package:pipo/domain/entities/user.dart';

mixin UserRepository {
  Future<User> getRandomUser();
}
