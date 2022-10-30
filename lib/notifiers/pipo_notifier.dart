import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/repositories/pipo_repository.dart';

class PipoNotifier extends StateNotifier<List<Pipo>> {
  PipoNotifier() : super([]);

  Future<void> getNewPipo(PipoRepository pipoRepository) async {
    final pipo = await pipoRepository.getPipo();
    state = [...state, pipo];
  }
}
