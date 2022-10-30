import 'package:pipo/domain/entities/pipo.dart';

mixin PipoRepository {
  Future<Pipo> getPipo();
}
