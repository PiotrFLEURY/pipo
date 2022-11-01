import 'dart:developer';

import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

import 'index.dart';

Future<Response> onRequest(RequestContext context) async {
  final randomUserUri = context.request.uri.replace(
    scheme: 'https',
    host: 'randomuser.me',
    port: 443,
    path: '/api/',
  );

  log('$randomUserUri');

  final apiResponse = await http.get(randomUserUri);

  log('api reponse: ${apiResponse.body}');

  if (apiResponse.statusCode != 200) {
    return Response(statusCode: 500, body: 'Error fetching user');
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
