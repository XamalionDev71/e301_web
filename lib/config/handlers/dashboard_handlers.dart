import 'package:e301_web/providers/auth_provider.dart';
import 'package:e301_web/ui/views/dashboard_view.dart';
import 'package:e301_web/ui/views/login_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(
    handlerFunc: (context, params) {
      final authProvider = Provider.of<AuthProvider>(context!);

      if (authProvider.authStatus == AuthStatus.notAuthenticated) {
        return DashboardView();
      } else {
        return LoginView();
      }
    },
  );
}
