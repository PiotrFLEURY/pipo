import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/data/repositories/pipo_repository_impl.dart';
import 'package:pipo/data/repositories/random_user_repository_impl.dart';
import 'package:pipo/data/sources/pipotron_api.dart';
import 'package:pipo/data/sources/random_user_api.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/domain/repositories/pipo_repository.dart';
import 'package:pipo/domain/repositories/user_repository.dart';
import 'package:pipo/presentation/states/notifiers/notifiers.dart';

final dioProvider = Provider((ref) => Dio());

final pipotronApiProvider = Provider(
  (ref) => PipotronApi(
    ref.read(
      dioProvider,
    ),
  ),
);

final randomUserApiProvider = Provider(
  (ref) => RandomUserApi(
    ref.read(
      dioProvider,
    ),
  ),
);

final pipoRepositoryProvider = Provider<PipoRepository>(
  (ref) => PipoRepositoryImpl(
    ref.read(
      pipotronApiProvider,
    ),
  ),
);

final randomUserRepositoryProvider = Provider<UserRepository>(
  (ref) => RandomUserRepositoryImpl(
    ref.read(
      randomUserApiProvider,
    ),
  ),
);

final backgroundProvider =
    StateNotifierProvider<BackgroundNotifier, List<String>>(
  (ref) => BackgroundNotifier(),
);

final latestBackgroundProvider = Provider<String>((ref) {
  final backgrounds = ref.watch(backgroundProvider);

  return backgrounds.isEmpty ? '' : backgrounds.last;
});

final pipoProvider = StateNotifierProvider<PipoNotifier, List<Pipo>>((ref) {
  return PipoNotifier(
    ref.read(pipoRepositoryProvider),
  );
});

final latestPipoProvider = Provider<String>((ref) {
  final pipos = ref.watch(pipoProvider);

  return pipos.isEmpty ? 'Click refresh button' : pipos.last.text;
});

final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier(ref.read(randomUserRepositoryProvider));
});

final userPictureProvider = Provider<String>((ref) {
  final user = ref.watch(userProvider);

  return user?.picture ?? '';
});

final userFullNameProvider = Provider<String>((ref) {
  final user = ref.watch(userProvider);

  return user?.fullName ?? '';
});
