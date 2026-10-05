import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';
import 'package:material_ui/material_ui.dart';
import 'package:provider/provider.dart';
import 'package:wc_2026_mobile/config/application_bindings.dart';
import 'package:wc_2026_mobile/ui/core/logging/app_logger.dart';
import 'package:wc_2026_mobile/ui/core/logging/log_output.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_theme.dart';

void main() {
  AppLogger.configure(
    level: kDebugMode ? Level.ALL : Level.INFO,
    outputs: const [ConsoleLogOutput()],
  );
  runApp(ApplicationBindings(child: MainApp()));
}

class const MainApp({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light,
      routerConfig: context.read<GoRouter>(),
      builder: (context, child) {
        return MaterialUiCompatibilityBridge(child: child!);
      },
    );
  }
}
