import 'package:flutter/material.dart';

void main() {
  WeatherData weatherData = WeatherData(
    city: "Essen",
    temperature: 22.4,
    weatherCondition: "Sonnig",
  );

  runApp(MyApp(weatherData: weatherData));
}

class MyApp extends StatelessWidget {
  final WeatherData weatherData;

  const MyApp({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(weatherData: weatherData),
    );
  }
}

class WeatherApp extends StatelessWidget {
  final WeatherData weatherData;

  const WeatherApp({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wetter-App"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        alignment: Alignment.topCenter,
        color: Colors.grey[200],
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                height: 30,
                color: Colors.grey[350],
                child: const Text("Willkommen zur Wetter-App",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text("Aktuelles Wetter in ${weatherData.city}:",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text("Temperatur: ${weatherData.temperature}°C",
              ),
              Text("Wetterbedingung: ${weatherData.weatherCondition}",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherData {
  String city;
  double temperature;
  String weatherCondition;

  WeatherData(
      {required this.city,
       required this.temperature,
       required this.weatherCondition});
}
