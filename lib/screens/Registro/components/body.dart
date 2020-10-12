import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travi_screens/screens/Login/login_screen.dart';
import 'package:travi_screens/screens/Registro/components/background.dart';
import 'package:travi_screens/screens/Registro/components/or_divider.dart';
import 'package:travi_screens/screens/Registro/components/social_icon.dart';
import 'package:travi_screens/scripts/components/already_have_an_account_acheck.dart';
import 'package:travi_screens/scripts/components/rounded_button.dart';
import 'package:travi_screens/scripts/components/rounded_input_field.dart';
import 'package:travi_screens/scripts/components/rounded_password_field.dart';

class BodyRegistro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGISTRATE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/registro.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Tu Correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "REGISTRARME",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
