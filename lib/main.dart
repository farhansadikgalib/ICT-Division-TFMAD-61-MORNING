import 'package:flutter/material.dart';
import 'package:registration_morning/01-11-2021%20class%2024/Expandable%20Screen.dart';
import 'package:registration_morning/03-11-2021%20class%2025/ContactList.dart';
import 'package:registration_morning/03-11-2021%20class%2025/Drawer.dart';
import 'package:registration_morning/04-12-2021%20class%2034/RegistrationPage.dart';
import 'package:registration_morning/06-12-21%20class%2035/FirebaseRealtimeDataView.dart';
import 'package:registration_morning/08-11-2021%20class%2026/GlowEffect.dart';
import 'package:registration_morning/13-11-2021%20class%2027/GridViewWithCardDesign.dart';
import 'package:registration_morning/13-11-2021%20class%2027/GridWithListItems.dart';
import 'package:registration_morning/15-11-2021%20class%2028/LocalJsonWithSearchbar.dart';
import 'package:registration_morning/25-11-2021%20class%2031/WeatherAppWithAPI.dart';
import 'package:registration_morning/27-10-2021/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: FirebaseRealtimeDatabaseWithDataView()
    );
  }
}


