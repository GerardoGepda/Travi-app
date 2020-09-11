import 'package:flutter/material.dart';

class Cuerpo extends StatefulWidget {
  const Cuerpo({Key key}) : super(key: key);

  @override
  _CuerpoState createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      new Grad(),
      Column(
        children: <Widget>[
          Container(
            height: 90.0,
            padding: EdgeInsets.fromLTRB(85.0, 49.0, 85.0, 0.0),
            child: message(),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 10.0),
            height: 400.0,
            child: travi(),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 70.0, 0.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 50.0,
                    child: new RaisedButton(
                        color: Colors.white,
                        child: Text(
                          'Comenzar',
                          style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF119EED)),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30.0),
                                right: Radius.circular(30.0)))),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20.0, 7.0, 0.0, 65.0),
              width: 320.0,
              height: 50.0,
              child: new OutlineButton(
                  child: Text(
                    'Ya tengo una cuenta',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/registro');
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
          ),
        ],
      ),
    ]);
  }
}

//gradient
class Grad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/mun.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

//Logo
Widget travi() {
  return Container(
    child: Image(
      width: 400.0,
      height: 200.0,
      image: AssetImage("assets/images/pana.png"),
    ),
  );
}

//Mensaje
Widget message() {
  return Container(
    child: Text(
      "TRAVI",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: "Righteous", fontSize: 40.0, color: Color(0xFF0d80eb)),
    ),
  );
}

//comenzar
Widget comenzar() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Container(
        width: 300.0,
        height: 50.0,
        child: new RaisedButton(
            color: Colors.white,
            child: Text(
              'Comenzar',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0d80eb)),
            ),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30.0),
                    right: Radius.circular(30.0)))),
      ),
    ],
  );
}

Widget ready() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Container(
        width: 300.0,
        height: 50.0,
        child: new OutlineButton(
            child: Text(
              'Ya tengo una cuenta',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            onPressed: () {},
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
  );
}
