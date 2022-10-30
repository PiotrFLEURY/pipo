import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/domain/repositories/user_repository.dart';

class UserNotifier extends StateNotifier<User?> {
  final UserRepository userRepository;
  UserNotifier(
    this.userRepository,
  ) : super(null);

  Future<void> getRandomUser() async {
    state = await userRepository.getRandomUser();
  }
}
