// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../view/cities/cities_view.dart' as _i3;
import '../../view/countries/countries_view.dart' as _i2;
import '../../view/home/home_view.dart' as _i1;
import '../../view/weather/weather_view.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    CountriesRoute.name: (routeData) {
      final args = routeData.argsAs<CountriesRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.CountriesView(
          key: args.key,
          region: args.region,
        ),
      );
    },
    CitiesRoute.name: (routeData) {
      final args = routeData.argsAs<CitiesRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CitiesView(
          key: args.key,
          country: args.country,
        ),
      );
    },
    WeatherRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.WeatherView(
          key: args.key,
          city: args.city,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i5.RouteConfig(
          CountriesRoute.name,
          path: '/countries',
        ),
        _i5.RouteConfig(
          CitiesRoute.name,
          path: '/cities',
        ),
        _i5.RouteConfig(
          WeatherRoute.name,
          path: '/weather',
        ),
      ];
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.CountriesView]
class CountriesRoute extends _i5.PageRouteInfo<CountriesRouteArgs> {
  CountriesRoute({
    _i6.Key? key,
    required String region,
  }) : super(
          CountriesRoute.name,
          path: '/countries',
          args: CountriesRouteArgs(
            key: key,
            region: region,
          ),
        );

  static const String name = 'CountriesRoute';
}

class CountriesRouteArgs {
  const CountriesRouteArgs({
    this.key,
    required this.region,
  });

  final _i6.Key? key;

  final String region;

  @override
  String toString() {
    return 'CountriesRouteArgs{key: $key, region: $region}';
  }
}

/// generated route for
/// [_i3.CitiesView]
class CitiesRoute extends _i5.PageRouteInfo<CitiesRouteArgs> {
  CitiesRoute({
    _i6.Key? key,
    required String country,
  }) : super(
          CitiesRoute.name,
          path: '/cities',
          args: CitiesRouteArgs(
            key: key,
            country: country,
          ),
        );

  static const String name = 'CitiesRoute';
}

class CitiesRouteArgs {
  const CitiesRouteArgs({
    this.key,
    required this.country,
  });

  final _i6.Key? key;

  final String country;

  @override
  String toString() {
    return 'CitiesRouteArgs{key: $key, country: $country}';
  }
}

/// generated route for
/// [_i4.WeatherView]
class WeatherRoute extends _i5.PageRouteInfo<WeatherRouteArgs> {
  WeatherRoute({
    _i6.Key? key,
    required String city,
  }) : super(
          WeatherRoute.name,
          path: '/weather',
          args: WeatherRouteArgs(
            key: key,
            city: city,
          ),
        );

  static const String name = 'WeatherRoute';
}

class WeatherRouteArgs {
  const WeatherRouteArgs({
    this.key,
    required this.city,
  });

  final _i6.Key? key;

  final String city;

  @override
  String toString() {
    return 'WeatherRouteArgs{key: $key, city: $city}';
  }
}
