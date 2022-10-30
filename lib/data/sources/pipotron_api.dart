import 'package:dio/dio.dart';
import 'package:pipo/data/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'pipotron_api.g.dart';

@RestApi(baseUrl: 'https://mypipotron.fr/api/')
abstract class PipotronApi {
  factory PipotronApi(Dio dio, {String baseUrl}) = _PipotronApi;

  @GET('/pipo')
  Future<PipoModel> getPipo();
}
