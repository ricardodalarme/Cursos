import 'package:dashboard/controllers/menu_controller.dart';
import 'package:dashboard/controllers/navigation_controller.dart';
import 'package:dashboard/core/constants/app_colors.dart';
import 'package:dashboard/core/routing/routes.dart';
import 'package:dashboard/ui/pages/authentication/authentication_page.dart';
import 'package:dashboard/ui/pages/error/error_page.dart';
import 'package:dashboard/ui/site_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
        name: '/not-found',
        page: () => const ErrorPage(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(
          name: rootRoute,
          page: () => SiteLayout(),
        ),
        GetPage(
          name: authenticationPageRoute,
          page: () => const AuthenticationPage(),
        ),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
