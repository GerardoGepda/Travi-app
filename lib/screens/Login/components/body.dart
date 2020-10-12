import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travi_screens/screens/Login/components/background.dart';
import 'package:travi_screens/screens/Registro/signup_screen.dart';
import 'package:travi_screens/scripts/components/already_have_an_account_acheck.dart';
import 'package:travi_screens/scripts/components/rounded_button.dart';
import 'package:travi_screens/scripts/components/rounded_input_field.dart';
import 'package:travi_screens/scripts/components/rounded_password_field.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "INGRESAR",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/comienzo.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Tu Correo",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "INGRESAR",
              press: () {
                Navigator.of(context).pushNamed('/tuto');
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
          ],
        ),
      ),
    );
  }
}
