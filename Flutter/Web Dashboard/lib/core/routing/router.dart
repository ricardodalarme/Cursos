import 'package:dashboard/core/routing/routes.dart';
import 'package:dashboard/ui/pages/clients/clients_page.dart';
import 'package:dashboard/ui/pages/drivers/drivers_page.dart';
import 'package:dashboard/ui/pages/overview/overview_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(const OverviewPage());
    case driversPageRoute:
      return _getPageRoute(const DriversPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
