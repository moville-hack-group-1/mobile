import 'package:educanacao/http/interceptors/logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

final Client client =
HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);

const String TRILHA_URL = 'https://educanacao.pagekite.me/content/trilha.json';