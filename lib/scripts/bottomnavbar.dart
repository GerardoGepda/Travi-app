import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatelessWidget {

  BottomNavBar({Key key, this.indexBar}) : super(key: key);
  
  final indexBar;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
          index: indexBar,
          height: 50.0,
          items: <Widget>[
            Container(
              child: GestureDetector(
                child: Icon(Icons.explore, size: 30, color: indexBar == 0 ? Color(0xFF0d80eb) : Colors.black),
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            Container(
              child: GestureDetector(
                child: Icon(Icons.location_on, size: 30, color: indexBar == 1 ? Color(0xFF0d80eb) : Colors.black),
                onTap: (){
                  Navigator.pushNamed(context, '/routesBuses');
                },
              ),
            ),
            Container(
              child: GestureDetector(
                child: Icon(Icons.payment, size: 30, color: indexBar == 2 ? Color(0xFF0d80eb) : Colors.black),
                onTap: (){
                  Navigator.pushNamed(context, '/routesBuses');
                },
              ),
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: indexBar == 0 ? Colors.grey[900] : Colors.grey[200],
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
    );
  }
}