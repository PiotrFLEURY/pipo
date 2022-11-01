// https://mypipotron.fr/api/

import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

import 'index.dart';

Future<Response> onRequest(RequestContext context) async {
  final pipotronUri = context.request.uri.replace(
    scheme: 'https',
    host: 'mypipotron.fr',
    port: 443,
    path: '/api/pipo',
  );

  final apiResponse = await http.get(pipotronUri);

  if (apiResponse.statusCode != 200) {
    return Response(statusCode: 500, body: 'Error fetching pipotron');
  }

  return Response(
    statusCode: apiResponse.statusCode,
    body: apiResponse.body,
    headers: {
      'Content-Type': 'application/json',
      'allow-origin': allowedOrigins,
      'access-control-allow-origin': allowedOrigins,
      'access-control-allow-headers': '*',
      'access-control-allow-methods': '*',
      'access-control-allow-credentials': 'true',
    },
  );
}
