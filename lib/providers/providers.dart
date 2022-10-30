import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/entities/user.dart';
import 'package:pipo/notifiers/notifiers.dart';

final backgroundProvider =
    StateNotifierProvider<BackgroundNotifier, List<String>>(
  (ref) => BackgroundNotifier(),
);

final pipoProvider = StateNotifierProvider<PipoNotifier, List<Pipo>>((ref) {
  return PipoNotifier();
});

final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier();
});
