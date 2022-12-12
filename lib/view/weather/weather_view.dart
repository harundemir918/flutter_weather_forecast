import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';

class WeatherView extends StatefulWidget {
  final String city;

  const WeatherView({Key? key, required this.city}) : super(key: key);

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          widget.city,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: SizeUtils.getWidth(context),
        padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.getDynamicWidth(context, 0.05),
          vertical: SizeUtils.getDynamicHeight(context, 0.05),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Monday, 12 Dec"),
            SizedBox(
              width: SizeUtils.getDynamicWidth(context, 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "24",
                    style: TextStyle(fontSize: 72),
                  ),
                  Text(
                    "°C",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            const Text("Sunny"),
          ],
        ),
      ),
    );
  }
}
