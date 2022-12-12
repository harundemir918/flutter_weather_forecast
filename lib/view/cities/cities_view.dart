import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.gr.dart';
import '../../core/utils/size_utils.dart';

class CitiesView extends StatefulWidget {
  final String country;

  const CitiesView({Key? key, required this.country}) : super(key: key);

  @override
  State<CitiesView> createState() => _CitiesViewState();
}

class _CitiesViewState extends State<CitiesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          widget.country,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: SizeUtils.getDynamicWidth(context, 0.05),
          right: SizeUtils.getDynamicWidth(context, 0.05),
          top: SizeUtils.getDynamicHeight(context, 0.1),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF387286),
              Color(0xFF65ACC4),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(height: 10),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _citiesCard("Istanbul1"),
                  _citiesCard("Istanbul2"),
                  _citiesCard("Istanbul3"),
                  _citiesCard("Istanbul4"),
                  _citiesCard("Istanbul5"),
                  _citiesCard("Istanbul6"),
                  _citiesCard("Istanbul7"),
                  _citiesCard("Istanbul8"),
                  _citiesCard("Istanbul9"),
                  _citiesCard("Istanbul0"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _citiesCard(String city) {
    return GestureDetector(
      onTap: () {
        context.router.navigate(WeatherRoute(city: city));
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: SizeUtils.getDynamicHeight(context, 0.01),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.getDynamicWidth(context, 0.05),
          vertical: SizeUtils.getDynamicHeight(context, 0.05),
        ),
        decoration: BoxDecoration(
          color: Color(0xFF78ADBD),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(city),
      ),
    );
  }
}
