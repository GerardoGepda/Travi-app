import 'package:flutter/material.dart';
import 'screens/profile.dart';
import 'screens/chat.dart';
//import 'screens/login.dart';
import 'screens/Home.dart';
import 'screens/routesBuses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/chat': (context) => ChatPage(),
        '/routesBuses': (context) => RoutesAndBuses()
      },
      title: 'Flutter Demo',
    );
  }
}