import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travi_screens/screens/Comienzo/components/background.dart';
import 'package:travi_screens/screens/Login/login_screen.dart';
import 'package:travi_screens/screens/Registro/signup_screen.dart';
import 'package:travi_screens/scripts/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Este tamaño nos provee todo el height & width de la pantalla
    return Material(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "TRAVI",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Righteous"),
              ),
              Text(
                "La APP del transporte colectivo",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                "assets/icons/buss.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                color: Colors.white,
                text: "Comenzar",
                textColor: Colors.blue,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: size.width * 0.8,
                child: OutlineButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Text(
                      'Ya tengo una cuenta',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    borderSide: BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.5,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30.0),
                            right: Radius.circular(30.0)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
