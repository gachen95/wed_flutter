import 'package:get/get.dart';
import 'package:wed_flutter/pages/application/index.dart';
import 'package:wed_flutter/pages/combo/index.dart';
import 'package:wed_flutter/pages/customization/appointment/index.dart';
import 'package:wed_flutter/pages/customization/view.dart';
import 'package:wed_flutter/pages/mini/index.dart';
import 'package:wed_flutter/pages/splash/index.dart';
import 'package:wed_flutter/pages/us/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.SPLASH;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
      // middlewares: [
      //   RouteSplashMiddleware(priority: 1),
      // ],
    ),
    // 需要登录
    GetPage(
      name: AppRoutes.Application,
      page: () => ApplicationPage(),
      binding: ApplicationBinding(),
      middlewares: [
        // RouteAuthMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.COMBO,
      page: () => ComboPage(),
      binding: ComboBinding(),
      // middlewares: [
      //   RouteSplashMiddleware(priority: 1),
      // ],
    ),

    GetPage(name: AppRoutes.CUSTOMIZATION, page: () => CustomizationPage(), children: [
      GetPage(
        name: AppRoutes.APPOINTMENT,
        page: () => ApptPage(),
        binding: ApptBinding(),
      ),
    ]),

    GetPage(
      name: AppRoutes.MINI,
      page: () => MiniPage(),
      binding: MiniBinding(),
      // middlewares: [
      //   RouteSplashMiddleware(priority: 1),
      // ],
    ),
    GetPage(
      name: AppRoutes.US,
      page: () => UsPage(),
      binding: UsBinding(),
      // middlewares: [
      //   RouteSplashMiddleware(priority: 1),
      // ],
    ),
  ];
}
