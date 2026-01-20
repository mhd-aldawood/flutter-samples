import 'package:get/get.dart';
import 'package:my_app/app/views/pages/home/home_binding.dart';
import 'package:my_app/app/views/pages/home/home.dart';
import 'package:my_app/app/views/pages/login/auth_binding.dart';
import 'package:my_app/app/views/pages/login/login.dart';
import 'package:my_app/app/views/pages/profile/auth_middleware.dart';
import 'package:my_app/app/views/pages/profile/profile.dart';
import 'package:my_app/app/views/pages/profile/profile_binding.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
      middlewares: [AuthMiddleware()],
    ),
  ];
}