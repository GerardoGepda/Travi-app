import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:travi_screens/screens/home_mapa/Pass.dart';
import 'package:travi_screens/screens/home_mapa/home_mapa.dart';
import 'package:travi_screens/screens/home_mapa/routesBuses.dart';

class BottomNavNew extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavNew> {
  final page = 0;
  Color color = Colors.grey[900];
  GlobalKey _bottomNavigationKey = GlobalKey();

  final HomePage _homePage = HomePage();
  final RoutesAndBuses _routesAndBuses = RoutesAndBuses();
  final Pass _pass = Pass();

  Widget _showPage = HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _routesAndBuses;
        break;
      case 2:
        return _pass;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: page,
          height: 55.0,
          items: <Widget>[
            Icon(Icons.explore, size: 30),
            Icon(Icons.location_on, size: 30),
            Icon(Icons.camera_front, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: color,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              if (tappedIndex == 0) {
                _showPage = _pageChooser(tappedIndex);
                color = Colors.grey[900];
              } else if (tappedIndex == 1) {
                _showPage = _pageChooser(tappedIndex);
                color = Colors.transparent;
              } else if (tappedIndex == 2) {
                _showPage = _pageChooser(tappedIndex);
                color = Colors.transparent;
              }
            });
          },
        ),
        body: Container(
          color: Colors.transparent,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}
