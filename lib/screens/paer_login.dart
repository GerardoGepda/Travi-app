import 'package:flutter/material.dart';
import 'package:travi_screens/ui/ui_helper.dart';

bool _value = false;

class PearLogin extends StatefulWidget {
  @override
  _PearLoginState createState() => _PearLoginState();
}

class _PearLoginState extends State<PearLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00b8bff),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Ingresar",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              _textField(UIHelper.email, false),
              _textField(UIHelper.password, true),
              _keepLogin,
              _loginButton,
            ],
          ),
        ),
      ),
    );
  }

  Widget _textField(String text, bool obscure) => Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: TextField(
          obscureText: obscure,
          decoration: new InputDecoration(
            focusedBorder: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.white, width: 2),
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(color: Color(0xFFFFFFF), width: 2),
              borderRadius: const BorderRadius.all(
                const Radius.circular(20.0),
              ),
            ),
            filled: true,
            hintStyle: new TextStyle(color: Colors.white),
            hintText: text,
          ),
        ),
      );
  Widget get _keepLogin => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: (bool value) {
                  setState(() {
                    _value = value;
                  });
                },
                value: _value),
            Text("Manten mi cuenta activa",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300)),
          ],
        ),
      );
  Widget get _loginButton => Padding(
        padding: const EdgeInsets.fromLTRB(67.0, 50.0, 0.0, 0.0),
        child: InkWell(
          borderRadius: _loginButtonBorderStyle,
          onTap: () {
            Navigator.of(context).pushNamed('/tuto');
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: _loginButtonBorderStyle),
            height: 60.0,
            width: 210.0,
            child: Center(
              child: Text(
                "Login".toUpperCase(),
                style: TextStyle(
                  color: UIHelper.PEAR_PRIMARY_COLOR,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      );
}

BorderRadius get _loginButtonBorderStyle => BorderRadius.only(
      bottomRight: Radius.circular(80),
      topRight: Radius.circular(80),
      bottomLeft: Radius.circular(80),
      topLeft: Radius.circular(80),
    );
