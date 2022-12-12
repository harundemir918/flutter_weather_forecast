import 'package:auto_route/auto_route.dart';

import '../../view/cities/cities_view.dart';
import '../../view/countries/countries_view.dart';
import '../../view/home/home_view.dart';
import '../../view/weather/weather_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: "/home", initial: true),
    AutoRoute(page: CountriesView, path: "/countries"),
    AutoRoute(page: CitiesView, path: "/cities"),
    AutoRoute(page: WeatherView, path: "/weather"),
  ],
  replaceInRouteName: 'View,Route',
)
class $AppRouter {}
