import 'package:flutter/material.dart';
import 'app.dart';
import 'configuration.dart';

void main() {
  runApp(Configuration(
    serverUrl: 'http://prod.server.com',
    child: MyApp(),
  ));
}
