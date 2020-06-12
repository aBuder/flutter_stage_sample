import 'package:flutter/material.dart';
import 'app.dart';
import 'configuration.dart';

void main() {
  runApp(Configuration(
    serverUrl: 'http://stageing.server.com',
    child: MyApp(),
  ));
}
