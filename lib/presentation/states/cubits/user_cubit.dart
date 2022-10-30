import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/domain/repositories/user_repository.dart';

class UserCubit extends Cubit<User?> {
  final UserRepository userRepository;

  UserCubit({
    required this.userRepository,
  }) : super(null);

  Future<void> getRandomUser() async {
    final user = await userRepository.getRandomUser();
    emit(user);
  }
}
