import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/domain/repositories/user_repository.dart';

class UserNotifier extends StateNotifier<User?> {
  UserNotifier() : super(null);

  Future<void> getRandomUser(UserRepository userRepository) async {
    state = await userRepository.getRandomUser();
  }
}
