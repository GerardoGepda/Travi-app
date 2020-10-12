import 'package:flutter/material.dart';
import 'package:travi_screens/screens/Comienzo/components/body.dart';
import 'package:travi_screens/screens/Login/components/body.dart';
import 'package:travi_screens/screens/Registro/components/body.dart';
import 'package:travi_screens/screens/home_mapa/Pass.dart';
import 'package:travi_screens/screens/home_mapa/home_mapa.dart';
import 'package:travi_screens/screens/home_mapa/routesBuses.dart';
import 'package:travi_screens/screens/side_menu/chat.dart';
import 'package:travi_screens/screens/side_menu/config_page.dart';
import 'package:travi_screens/screens/side_menu/mis_viajes/viajes.dart';
import 'package:travi_screens/screens/side_menu/perfil/perfil.dart';
import 'package:travi_screens/screens/splash.dart';
import 'package:travi_screens/screens/tutorial_screen/tutorial.dart';
import 'package:travi_screens/scripts/NewNavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/': (context) => BottomNavNew(),
        '/viajes': (context) => Viajes(),
        '/profile': (context) => Perfil(),
        '/config': (context) => ConfigPage(),
        '/chat': (context) => ChatPage(),
        '/start': (context) => Body(),
        '/login': (context) => BodyLogin(),
        '/registro': (context) => BodyRegistro(),
        '/tuto': (context) => Tuto(),
        '/routesBuses': (context) => RoutesAndBuses(),
        '/splash': (context) => SplashScreen(),
        '/pass': (context) => Pass(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
    );
  }
}
