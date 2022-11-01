import 'package:dart_frog/dart_frog.dart';

const allowedOrigins = ['http://localhost:5000'];

Response onRequest(RequestContext context) {
  return Response(body: 'Welcome to Dart Frog!');
}
