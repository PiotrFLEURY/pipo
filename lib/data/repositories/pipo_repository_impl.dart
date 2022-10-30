import 'package:pipo/data/sources/pipotron_api.dart';
import 'package:pipo/domain/entities/pipo.dart';
import 'package:pipo/domain/repositories/pipo_repository.dart';

class PipoRepositoryImpl with PipoRepository {
  final PipotronApi _pipotronApi;

  PipoRepositoryImpl(this._pipotronApi);

  @override
  Future<Pipo> getPipo() async {
    final pipoModel = await _pipotronApi.getPipo();
    return Pipo(text: pipoModel.pipo);
  }
}
