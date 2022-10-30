import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/repositories/pipo_repository.dart';

class PipoNotifier extends StateNotifier<List<Pipo>> {
  final PipoRepository pipoRepository;
  PipoNotifier(
    this.pipoRepository,
  ) : super([]);

  Future<void> getNewPipo() async {
    final pipo = await pipoRepository.getPipo();
    state = [...state, pipo];
  }
}
