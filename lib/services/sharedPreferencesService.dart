import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  /// score
  static Future<void> saveCurrentScore(int value) async {
    (await _prefs).setInt('current_score', value);
  }
  static Future<int> getCurrentScore() async {
    return (await _prefs).getInt('current_score') ?? 0;
  }

  /// highest score
  static Future<void> saveHighScore(int value) async {
    (await _prefs).setInt('high_score', value);
  }
  static Future<int> getHighScore() async {
    return (await _prefs).getInt('high_score') ?? 0;
  }

  /// recent
  static Future<void> saveRecent(List<String> value) async {
    (await _prefs).setStringList('recent', value);
  }
  static Future<List<String>> getRecent() async {
    return (await _prefs).getStringList('recent') ?? [];
  }
}
