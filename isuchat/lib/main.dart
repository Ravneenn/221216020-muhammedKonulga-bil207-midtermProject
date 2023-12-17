import 'package:flutter/material.dart';
import 'package:isuchat/pages/profileScreen.dart';
import 'package:isuchat/pages/settingsScreen.dart';
import 'package:isuchat/pages/welcomeScreen.dart';
import 'pages/loginScreen.dart';
import 'pages/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => welcomeScreen(),
        '/login': (context) => loginScreen(),
        '/main': (context) => mainScreen(),
        '/profile': (context) => profileScreen(),
        '/settings': (context) => settingsScreen()
      },
      initialRoute: '/welcome',
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
