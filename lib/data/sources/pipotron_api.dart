import 'package:dio/dio.dart';
import 'package:pipo/data/models/models.dart';
import 'package:retrofit/retrofit.dart';

part 'pipotron_api.g.dart';

@RestApi(baseUrl: 'http://localhost:8080/')
abstract class PipotronApi {
  factory PipotronApi(Dio dio, {String baseUrl}) = _PipotronApi;

  @GET('/pipotron')
  Future<PipoModel> getPipo();
}
