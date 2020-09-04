import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'dart:ui';

class AboutPage extends StatelessWidget {
  final AssetImage image;

  final String place;

  AboutPage({
    this.image,
    this.place,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SlidingUpPanel(
              body: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 40,
                    child: Text(
                      place,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              panelBuilder: (sc) => _panel(sc),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50), topLeft: Radius.circular(50)),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _panel(ScrollController sc) {
  return ListView(
    controller: sc,
    children: <Widget>[
      Column(
        children: [
          Icon(
            Icons.add_circle_outline,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48, left: 20, right: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 60, left: 60, top: 15, bottom: 15),
                child: Text(
                  'Iniciar',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
