import 'package:flutter/material.dart';
import 'package:movies_app/pages/home_page/home_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/home_page':
          return MaterialPageRoute(builder: ((context) => const HomePage()));
        case '/':
          return MaterialPageRoute(builder: ((context) => const HomePage()));
        default:
          throw Exception('Page route is invalid');
      }
    },
    theme: ThemeData(
      primaryColor: Colors.grey.shade900,
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          color: Color.fromARGB(255, 221, 181, 64),
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
    ),
  ));
}


//this idffbt