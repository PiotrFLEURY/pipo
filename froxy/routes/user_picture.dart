import 'package:dart_frog/dart_frog.dart';
import 'package:http/http.dart' as http;

import 'index.dart';

Future<Response> onRequest(RequestContext context) async {
  final originalUri = context.request.uri;
  final randomUserUri = originalUri.replace(
    scheme: 'https',
    host: 'randomuser.me',
    port: 443,
    path: originalUri.queryParameters['path'],
    queryParameters: {},
  );

  //print('$randomUserUri');

  final apiResponse = await http.get(randomUserUri);

  //print('api reponse: ${apiResponse.body}');

  if (apiResponse.statusCode != 200) {
    return Response(statusCode: 500, body: 'Error fetching user');
  }

  final bytes = apiResponse.bodyBytes;

  // persist the image
  /*final file = File('/tmp/image.jpg');
  if (!file.existsSync()) {
    file.createSync();
  }
  file.writeAsBytesSync(bytes);*/

  return Response.bytes(
    body: bytes,
    statusCode: apiResponse.statusCode,
    headers: {
      'Content-Type': 'image/jpeg',
      'allow-origin': allowedOrigins,
      'access-control-allow-origin': allowedOrigins,
      'access-control-allow-headers': '*',
      'access-control-allow-methods': '*',
      'access-control-allow-credentials': 'true',
    },
  );
}
