import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  String _enteredId = '';

  String get enteredId => _enteredId;

  void login(String id) {
    if (id.isNotEmpty && id.trim().isNotEmpty) {
      _enteredId = id;
      state = true;
    }
  }

  void logout() {
    state = false;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, bool>((ref) {
  return AuthNotifier();
});
