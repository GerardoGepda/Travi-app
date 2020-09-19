import 'package:flutter/material.dart';

class Confignotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificaciones'),
        centerTitle: true,
      ),
      body: NotificationBody(),
    );
  }
}

class NotificationBody extends StatefulWidget {
  NotificationBody({Key key}) : super(key: key);
  @override
  _NotificationBodyState createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {

  List<String> options = <String>[
    'Activadas',
    'Silencio',
    'Ninguna'
  ];

  String dropDown = 'Activadas';
  Icon notificationsIcon = Icon(Icons.notifications_active);

  bool vibracion = false;
  bool llegada = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Text(
            'General',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Notificaciones',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: DropdownButton(
                  value: dropDown,
                  icon: notificationsIcon,
                  iconSize: 24,
                  elevation: 16,
                  items: options.map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String value) {
                    setState(() {
                      dropDown = value;
                      if (value == options[0])
                        notificationsIcon = Icon(Icons.notifications_active);
                      else if(value == options[1])
                        notificationsIcon = Icon(Icons.notifications_off);
                      else
                        notificationsIcon = Icon(Icons.notifications_none);
                    });
                  },
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Vibración en notificaciones',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Switch(
                value: vibracion,
                onChanged: (value) {
                  setState(() {
                    vibracion = value;
                  });
                },
              ),
            ],
          ),
          Divider(
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Notificaciones de llegada',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Switch(
                value: llegada,
                onChanged: (value) {
                  setState(() {
                    llegada = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}