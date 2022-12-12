import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.gr.dart';
import '../../core/utils/size_utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.getDynamicWidth(context, 0.05),
          vertical: SizeUtils.getDynamicHeight(context, 0.05),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1C586C),
              Color(0xFF65ACC4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Search a city to get weather forecast",
            ),
            TextFormField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(width: 1, color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(width: 2, color: Colors.white),
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
              ),
              textInputAction: TextInputAction.search,
            ),
            const Text(
              "or choose one of the regions",
            ),
            Flexible(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  _homeRegionCard("Asia"),
                  _homeRegionCard("Europe"),
                  _homeRegionCard("Africa"),
                  _homeRegionCard("Oceania"),
                  _homeRegionCard("Americas"),
                  _homeRegionCard("Polar"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton _homeRegionCard(String region) {
    return TextButton(
      onPressed: () {
        context.router.navigate(CountriesRoute(region: region));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF78ADBD),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            region,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
