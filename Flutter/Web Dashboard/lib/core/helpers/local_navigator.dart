import 'package:dashboard/core/constants/controllers.dart';
import 'package:dashboard/core/routing/router.dart';
import 'package:dashboard/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
