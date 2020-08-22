import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: SvgPicture.asset(
                    'assets/icons/Logo.svg',
                    semanticsLabel: "Logo image",
                  ),
                ),
                Text(
                  "TRAVI",
                ),
              ],
            ),
            Container(
              child: Text(
                "Viaja con tranquilidad con nosotros",
              ),
            ),
            Column(
              children: <Widget>[
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}