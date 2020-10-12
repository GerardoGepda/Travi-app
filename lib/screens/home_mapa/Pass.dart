import 'package:flutter/material.dart';
import 'package:travi_screens/scripts/bottomnavbar.dart';

class Pass extends StatefulWidget {
  Pass({Key key}) : super(key: key);

  @override
  _PassState createState() => _PassState();
}

class _PassState extends State<Pass> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
    );
  }
}
