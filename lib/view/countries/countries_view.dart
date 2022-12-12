import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.gr.dart';
import '../../core/utils/size_utils.dart';

class CountriesView extends StatefulWidget {
  final String region;

  const CountriesView({Key? key, required this.region}) : super(key: key);

  @override
  State<CountriesView> createState() => _CountriesViewState();
}

class _CountriesViewState extends State<CountriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          widget.region,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
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
                  _countriesCard("Turkiye1"),
                  _countriesCard("Turkiye2"),
                  _countriesCard("Turkiye3"),
                  _countriesCard("Turkiye4"),
                  _countriesCard("Turkiye5"),
                  _countriesCard("Turkiye6"),
                  _countriesCard("Turkiye7"),
                  _countriesCard("Turkiye8"),
                  _countriesCard("Turkiye9"),
                  _countriesCard("Turkiye0"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector _countriesCard(String country) {
    return GestureDetector(
      onTap: () {
        context.router.navigate(CitiesRoute(country: country));
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
        child: Text(
          country,
        ),
      ),
    );
  }
}
