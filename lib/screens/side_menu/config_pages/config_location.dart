import 'package:flutter/material.dart';

class ConfigLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar ubicaciones'),
        centerTitle: true,
      ),
      body: LocationBody(),
    );
  }
}

class LocationBody extends StatefulWidget {
  @override
  _LocationBodyState createState() => _LocationBodyState();
}

class _LocationBodyState extends State<LocationBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Text(
            'Configuración de ubicaciones',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Divider(thickness: 1.0,),
          
        ],
      ),
    );
  }
}