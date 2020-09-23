import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'config_pages/config_notification.dart';
import 'config_pages/config_location.dart';

class ConfigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
        centerTitle: true,
      ),
      body: ConfigBody(),
    );
  }
}

class ConfigBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Editar mis ubicaciones'),
            subtitle: Text('Perosonaliza tu ubicaciones'),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => ConfigLocation()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Editar Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => Confignotification()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.directions_bus),
            title: Text('Registrar rutas'),
          ),
        ],
      ),
    );
  }
}

class PersonlaPageRoute extends PageRouteBuilder {
  final Widget child;
  PersonlaPageRoute(this.child) : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
      return child;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
      return FadeTransition(
          opacity: animation,
          child: child,
        );
    }
  );
}