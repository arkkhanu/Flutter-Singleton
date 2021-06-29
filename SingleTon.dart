import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewSingleton {
  factory NewSingleton() {
    if (_singleton == null) {
      _singleton = NewSingleton._();
      _singleton!.init();
    }
    return _singleton!;
  }

  NewSingleton._();
  static NewSingleton? _singleton;

  bool initialized = false;
  // SharedPreferences? preferences;
  PackageInfo? packageInfo;

  init() async {
    if (_singleton == null) {
      _singleton = NewSingleton._();
    }
    packageInfo = await PackageInfo.fromPlatform();
    // preferences = await SharedPreferences.getInstance();
  }
}
