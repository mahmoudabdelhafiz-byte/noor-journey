import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStateProvider = ChangeNotifierProvider<AppState>((ref) => AppState());

class AppState extends ChangeNotifier {
  Locale _locale = const Locale('en');
  String _nickname = 'Noor Friend';
  String _avatar = '🧒🏽';
  int _completedChallenges = 0;

  Locale get locale => _locale;
  String get nickname => _nickname;
  String get avatar => _avatar;
  int get completedChallenges => _completedChallenges;
  bool get rewardUnlocked => _completedChallenges >= 3;

  void setLocale(Locale locale) { _locale = locale; notifyListeners(); }
  void saveProfile({required String nickname, required String avatar}) {
    _nickname = nickname.trim().isEmpty ? 'Noor Friend' : nickname.trim();
    _avatar = avatar; notifyListeners();
  }
  void markCompleted(int id) { if (_completedChallenges < id) { _completedChallenges = id; notifyListeners(); } }
  void resetProgress() { _completedChallenges = 0; notifyListeners(); }
}
