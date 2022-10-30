import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/repositories/pipo_repository.dart';

class PipoCubit extends Cubit<List<Pipo>> {
  final PipoRepository pipoRepository;

  PipoCubit({
    required this.pipoRepository,
  }) : super([]);

  Future<void> getNewPipo() async {
    final pipo = await pipoRepository.getPipo();
    final pipos = [...state, pipo];
    emit(pipos);
  }
}
