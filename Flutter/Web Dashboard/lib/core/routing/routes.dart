import 'package:dashboard/core/models/menu_item.dart';

const rootRoute = '/';

const overviewPageDisplayName = 'Overview';
const overviewPageRoute = '/overview';

const driversPageDisplayName = 'Drivers';
const driversPageRoute = '/drivers';

const clientsPageDisplayName = 'Clients';
const clientsPageRoute = '/clients';

const authenticationPageDisplayName = 'Log out';
const authenticationPageRoute = '/auth';


List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewPageDisplayName, overviewPageRoute),
  MenuItem(driversPageDisplayName, driversPageRoute),
  MenuItem(clientsPageDisplayName, clientsPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
