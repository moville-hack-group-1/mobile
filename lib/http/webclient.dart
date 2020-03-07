import 'package:educanacao/http/interceptors/logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

final Client client =
HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);

const String BASE_URL = 'http://6edf432a.ngrok.io/app_dev.php/api/';