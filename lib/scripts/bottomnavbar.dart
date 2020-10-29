import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:travi_screens/screens/home_mapa/routesBuses.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key key, this.indexBar}) : super(key: key);

  final indexBar;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: indexBar,
      height: 55.0,
      items: <Widget>[
        Container(
          child: GestureDetector(
            child: Icon(Icons.explore,
                size: 30,
                color: indexBar == 0 ? Color(0xFF0d80eb) : Colors.black),
            onTap: () {
              if(!Navigator.canPop(context)){
                Navigator.pushNamed(context, '/');
              }else{
                Navigator.pop(context);
              }
            },
          ),
        ),
        Container(
          child: GestureDetector(
            child: Icon(Icons.location_on,
                size: 30,
                color: indexBar == 1 ? Color(0xFF0d80eb) : Colors.black),
            onTap: () {
              Navigator.pushNamed(context, '/routesBuses');
            },
          ),
        ),
        Container(
          child: GestureDetector(
            child: Icon(Icons.camera_front,
                size: 30,
                color: indexBar == 2 ? Color(0xFF0d80eb) : Colors.black),
            onTap: () {
              Navigator.pushNamed(context, '/pass');
            },
          ),
        ),
      ],
      color: Colors.white,
      buttonBackgroundColor: Colors.white,
      backgroundColor: indexBar == 0 ? Colors.grey[900] : Colors.grey[200],
      animationCurve: Curves.easeInOut,
      animationDuration: Duration(milliseconds: 350),
    );
  }
}

class Bottombar extends StatelessWidget {
  Bottombar({Key key, this.indexBar}) : super(key: key);

  final indexBar;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexBar,
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore,
              size: 30,
              color: indexBar == 0 ? Color(0xFF0d80eb) : Colors.black,
          ),
          title: Text("Explorar"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on,
              size: 30,
              color: indexBar == 1 ? Color(0xFF0d80eb) : Colors.black,
          ),
          title: Text("Rutas"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_front,
              size: 30,
              color: indexBar == 2 ? Color(0xFF0d80eb) : Colors.black,
          ),
          title: Text("Pagos"),
        ),
      ],
      onTap: (value){
        onTaped(value, context);
      },
    );
  }

  void onTaped(index, context){
    if(index != indexBar){
      if(index == 0){
        Navigator.pushNamed(context, '/');
      }else if(index == 1){
        Navigator.pushNamed(context, '/routesBuses');
      }else{
        // if(!Navigator.canPop(context)){
        //   Navigator.pushNamed(context, '/pass');
        // }else{
        //   Navigator.pop(context);
        // }
      }
    }
  }

}