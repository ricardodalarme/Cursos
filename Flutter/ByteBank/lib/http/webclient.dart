import 'package:bytebank/http/logging_interceptor.dart';
import 'package:http_interceptor/http_interceptor.dart';

Future<void> findAll() async {
  var url = Uri.parse('http://192.168.0.105:8080/transactions');
  var client = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
  ]);

  var response = await client.get(url);
}
