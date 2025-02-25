import 'package:cpr_application/reserv.dart';
import 'package:cpr_application/setting.dart';
import 'package:flutter/material.dart';
import 'Login/signin.dart';
import 'Login/signup.dart';
import 'Login/welcome.dart';
import 'home.dart';
import 'history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CPR Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CprHomePage(),
    );
  }
}

class CprHomePage extends StatelessWidget {
  const CprHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome(),
        '/signin': (context) => Signin(),
        '/signup': (context) => Signup(),
        '/home': (context) => Home(),
        '/reserv': (context) => Reserv(),
        '/history': (context) => History(),
        '/setting': (context) => Setting(),
      },
    );
  }
}
// test
