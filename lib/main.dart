import 'package:flutter/material.dart';
import 'package:travi_screens/screens/Viajes/viajes.dart';
import 'package:travi_screens/screens/cuerpo.dart';
import 'package:travi_screens/screens/paer_Reg.dart';
import 'package:travi_screens/screens/paer_login.dart';
import 'package:travi_screens/screens/tuto.dart';
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
      initialRoute: '/start',
      routes: {
        '/': (context) => HomePage(),
        '/viajes': (context) => Viajes(),
        '/profile': (context) => ProfilePage(),
        '/chat': (context) => ChatPage(),
        '/start': (context) => Cuerpo(),
        '/login': (context) => PearReg(),
        '/registro': (context) => PearLogin(),
        '/tuto': (context) => Tuto(),
        '/routesBuses': (context) => RoutesAndBuses()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}
