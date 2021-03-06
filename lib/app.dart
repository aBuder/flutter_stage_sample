import 'package:app_stages_sample/configuration.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sample App'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Server:'),
              subtitle: Text(GlobalConfiguration().getString('serverUrl')),
            ),
            ListTile(
              title: Text('Version:'),
              subtitle: Text('${GlobalConfiguration().getInt('version')}'),
            ),
          ],
        ),
      ),
    );
  }
}
