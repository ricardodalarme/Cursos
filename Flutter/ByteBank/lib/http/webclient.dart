import 'dart:convert';

import 'package:bytebank/http/logging_interceptor.dart';
import 'package:bytebank/models/contact.dart';
import 'package:http_interceptor/http_interceptor.dart';

Future<void> findAll() async {
  var url = Uri.parse('http://192.168.0.105:8080/transactions');
  var client = InterceptedClient.build(interceptors: [
    LoggingInterceptor(),
  ]);

  var response = await client.get(url);
  final List<dynamic> json = jsonDecode(response.body);
  final List<Transaction> transactions = [];

  for (Map<String, dynamic> element in json) {
    Transaction(
        element['value'],
        Contact(0, element['contact']['name'],
            element['contact']['accountnNumber']));
  }
}
