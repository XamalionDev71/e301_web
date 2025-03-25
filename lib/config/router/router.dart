import 'package:e301_web/config/handlers/admin_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  //auth router
  static String loginRoute = 'auth/login';
  static String registerRoute = 'auth/register';

  //dashboard router
  static String dashboardRoute = '/dashboard';

  static void configureRouters() {
    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);
    //TODO: por implementar
    //router.define(registerRoute, handler: handler);
  }
}