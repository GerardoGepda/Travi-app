import 'package:flutter/material.dart';

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
            title: Text(
              'Editar mis ubicaciones',
            ),
            subtitle: Text('Perosonaliza tu ubicaciones'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Editar Perfil'),
          ),
          ListTile(
            title: Text('Notificaciones'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Registrar rutas'),
          ),
        ],
      ),
    );
  }
}