import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/core/command.dart';
import 'package:wc_2026_mobile/core/result.dart';
import 'package:wc_2026_mobile/data/repositories/auth/auth_repository.dart';
import 'package:wc_2026_mobile/domain/models/auth_session.dart';
import 'package:wc_2026_mobile/ui/core/logging/app_logger.dart';

class LoginViewModel({required final AuthRepository _authRepository})
    extends ChangeNotifier {
  final _log = AppLogger('LoginViewModel');
  late final login = Command1<void, (String, String)>(_login);
  String name = '';

  Future<Result<void>> _login((String, String) credentials) async {
    final (email, password) = credentials;

    debugPrint(credentials.toString());
    await Future.delayed(Duration(seconds: 2));

    final result = await _authRepository.login(
      email: email,
      password: password,
    );

    switch (result) {
      case Ok<AuthSession>(:final value):
        name = value.user.name;
        return Result.done;
      case Error<AuthSession>(:final error):
        _log.error(
          'Falha ao entrar',
          error: error,
          stackTrace: error.stackTrace,
        );
        return Result.error(error);
    }
  }
}
