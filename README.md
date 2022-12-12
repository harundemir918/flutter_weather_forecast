# Weather Forecast

Weather Forecast is a Flutter app for getting weather forecast based on region/country/city.

## Used Packages

- [flutter_bloc](https://pub.dev/packages/flutter_bloc) (For State Management)
- [auto_route](https://pub.dev/packages/auto_route) (To Navigate Between Pages)
- [auto_route_generator](https://pub.dev/packages/auto_route_generator) (To Generate Auto Router Boilerplate Code)
- [build_runner](https://pub.dev/packages/build_runner) (To Generate Boilerplate Code)
- [dio](https://pub.dev/packages/dio) (To Fetch Data)

## Used APIs

- [World Country API](https://rapidapi.com/herihermwn/api/world-country) (Listing regions/countries/cities)
- [WeatherAPI.com API](https://rapidapi.com/weatherapi/api/weatherapi-com/) (Getting weather info)

## Pages

- Home Page
    - Get forecast data with search bar using city name
    - Select the region listed below

- Country Listing Page
    - Select country with region data that comes from Home Page and get cities belongs to the selected country

- City Listing Page
    - Select city with country data that comes from Country Listing Page and get forecast data of the selected city

- Forecast Page
    - View weather forecast of the selected city.