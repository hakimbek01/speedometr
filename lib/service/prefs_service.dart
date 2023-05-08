import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {

  static String keyMode = "darkMode";
  static String keyColor = "isColor";

  static Future<void> storeMode(bool isDark)  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(keyMode, isDark);
  }

  static Future<bool?> loadMode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(keyMode);
  }

  static Future<void> storeColor(bool isColor)  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(keyColor, isColor);
  }

  static Future<bool?> loadColor() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(keyColor);
  }

}