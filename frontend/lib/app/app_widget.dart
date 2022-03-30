import 'package:divideai/app/features/authentication/authentication_screen.dart';
import 'package:divideai/app/features/home/home_screen.dart';
import 'package:divideai/app/features/register/register_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divide Ai',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AuthenticationScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "authentication": (context) => AuthenticationScreen(),
        "register": (context) => RegisterScreen(),
        "home": (context) => HomeScreen(),
      },
    );
  }
}
