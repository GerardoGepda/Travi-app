import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // begin: Alignment.topLeft,
          // end: Alignment.bottomRight,
          // stops: [0.7, 0.85],
          // colors: [Color(0xFF1289f7), Color(0xFF38b6de)],
          colors: [Color(0xFF06cbf7), Color(0xFF1978f9)],
          begin: const FractionalOffset(1.0, 0.1),
          end: const FractionalOffset(1.0, 1.0)
          ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.only(top: 50.0, left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 35.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 115.0),
                  child: Text(
                    "Ingresa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/Logo.svg',
                  semanticsLabel: 'Logo Travi',
                  width: 70.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.0),
                  width: 270.0,
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Usuario",
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  width: 270.0,
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Contraseña",
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25.0),
                  width: 130.0,
                  height: 45.0,
                  child: OutlineButton(
                    child: Text(
                      'Ingresar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    borderSide: BorderSide(width: 2.0, color: Colors.white),
                    disabledBorderColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: null
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              "TRAVI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 27.0,
                fontFamily: 'Righteous',
              ),
            ),
          ),
        ],
      ),
    );
  }
}