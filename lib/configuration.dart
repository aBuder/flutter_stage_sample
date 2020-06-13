///
/// Class for managing different configuration.
///
/// Use it with GlobalConfiguration() to access the singleton.
///
class GlobalConfiguration {
  static GlobalConfiguration _singleton = new GlobalConfiguration._internal();

  factory GlobalConfiguration() {
    return _singleton;
  }

  GlobalConfiguration._internal();

  Map<String, dynamic> appConfig = Map<String, dynamic>();

  ///
  /// Loading a configuration [map] into the current app config.
  ///
  GlobalConfiguration loadFromMap(Map<String, dynamic> map) {
    appConfig.addAll(map);
    return _singleton;
  }

  GlobalConfiguration loadStageConfig() {
    final Map<String, dynamic> stageConfig = {
      'serverUrl': 'https://stage.server.com',
      'version': 1
    };
    appConfig.addAll(stageConfig);
    return _singleton;
  }

  GlobalConfiguration loadProdConfig() {
    final Map<String, dynamic> stageConfig = {
      'serverUrl': 'https://prod.server.com',
      'version': 2
    };
    appConfig.addAll(stageConfig);
    return _singleton;
  }

  ///
  /// Reads a value of any type from persistent storage for the given [key].
  ///
  dynamic get(String key) => appConfig[key];

  ///
  /// Reads a [bool] value from persistent storage for the given [key], throwing an exception if it's not a bool.
  ///
  bool getBool(String key) => appConfig[key];

  ///
  /// Reads a [int] value from persistent storage for the given [key], throwing an exception if it's not an int.
  ///
  int getInt(String key) => appConfig[key];

  ///
  /// Reads a [double] value from persistent storage for the given [key], throwing an exception if it's not a double.
  ///
  double getDouble(String key) => appConfig[key];

  ///
  /// Reads a [String] value from persistent storage for the given [key], throwing an exception if it's not a String.
  ///
  String getString(String key) => appConfig[key];

  ///
  /// Clear the persistent storage. Only for Unit testing!
  ///
  void clear() => appConfig.clear();

  ///
  /// Update the given [value] for the given [key] in the storage.
  ///
  /// The updated value is *NOT* persistent
  /// Throws an exception if the given [value] has not the same [Type].
  ///
  void updateValue(String key, dynamic value) {
    if (appConfig[key] != null &&
        value.runtimeType != appConfig[key].runtimeType) {
      throw ("The persistent type of ${appConfig[key].runtimeType} does not match the given type ${value.runtimeType}");
    }
    appConfig.update(key, (dynamic) => value);
  }

  ///
  /// Adds the given [value] at the given [key] to the storage.
  ///
  /// The key and value is *NOT* persistent
  ///
  void addValue(String key, dynamic value) =>
      appConfig.putIfAbsent(key, () => value);

  ///
  /// Adds the given [map] to the storage.
  ///
  add(Map<String, dynamic> map) => appConfig.addAll(map);
}
