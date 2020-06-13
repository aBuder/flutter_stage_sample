import 'package:app_stages_sample/configuration.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'configuration.dart';

void main() async {
  GlobalConfiguration().loadStageConfig();
  runApp(MyApp());
}