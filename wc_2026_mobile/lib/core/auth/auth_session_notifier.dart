import 'dart:async';

import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/core/logging/app_logger.dart';
import 'package:wc_2026_mobile/core/result.dart';
import 'package:wc_2026_mobile/domain/models/auth_session.dart';
import 'package:wc_2026_mobile/domain/use_cases/auth/auth_logout_use_case.dart';
import 'package:wc_2026_mobile/domain/use_cases/auth_restore_session_use_case.dart';

class AuthSessionNotifier({
  required final AuthLogoutUseCase _authLogoutUseCase,
  required final AuthRestoreSessionUseCase _authRestoreSessionUseCase,
}) extends ChangeNotifier {
  final _log = AppLogger('AuthSessionNotifier');

  AuthSessionUser? _user;
  var _restored = false;

  bool get isRestored => _restored;
  AuthSessionUser? get user => _user;
  bool get isSignedIn => _user != null;

  this {
    unawaited(_restore());
  }

  Future<void> _restore() async {
    final restored = await _authRestoreSessionUseCase.restore();

    if (_restored) return;

    switch (restored) {
      case Ok<AuthSessionUser?>(:final value):
        _user = user;
        _log.info(value == null ? 'Sem sessão guardada' : 'Sessão restaurada');
      case Error<AuthSessionUser?>(:final error):
        _log.error('Falha ao ler a sessão guardada', error: error);
    }

    _restored = true;
    notifyListeners();
  }

  String get initials {
    final name = _user?.name.trim() ?? '';
    if (name.isEmpty) return '';

    final words = name.split(RegExp(r'\s+'));
    final first = words.first[0];
    return (words.length == 1 ? first : first + words.last[0]).toUpperCase();
  }

  void signedIn(AuthSessionUser user) {
    _user = user;
    _restored = true;
    _log.info('Sessão iniciada');
    notifyListeners();
  }

  Future<void> logout() async {
    final logout = await _authLogoutUseCase.logout();
    if (logout case Error(:final error)) {
      _log.error('Falha ao apagar o token no logout', error: error);
    }

    final changed = _user != null || _restored;

    _user = null;
    _restored = true;

    if (!changed) return;

    _log.info('Sessão encerrada');
    notifyListeners();
  }
}
