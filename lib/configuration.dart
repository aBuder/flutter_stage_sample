import 'package:flutter/material.dart';

class Configuration extends InheritedWidget {
  Configuration({
    Key key,
    this.serverUrl,
    Widget child,
  }) : super(key: key, child: child);

  final String serverUrl;

  @override
  bool updateShouldNotify(Configuration oldWidget) {
    return serverUrl != oldWidget.serverUrl;
  }

  static Configuration of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Configuration>();
  }
}
