import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHeader(),
      body: profileData,
    );
  }


  final Widget profileData = Center(
    child: Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            spreadRadius: -8,
            offset: Offset(1.0, 2.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.equalizer,
                color: const Color(0xFF0d80eb),
              ),
              Text(
                "Estadisticas",
                style: TextStyle(
                  color: const Color(0xFF0d80eb),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _circleOfData(Colors.green, "32", "Viajes", "realizados"),
              _circleOfData(Colors.blue, "10", "Comentarios", "realizados"),
              _circleOfData(Colors.yellow[700], "50", "Estrellas", "otorgadas"),
              _circleOfData(Colors.red[400], "223", "Travi", "puntos"),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: Text(
              "DETALLES",
              style: TextStyle(
                color: const Color(0xFF0d80eb),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  static Column _circleOfData(Color color, var data, String txt1, String txt2){
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
            child: Text(
              data.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Text(
          txt1,
        ),
        Text(
          txt2,
        ),
      ],
    );
  }


}

class MyHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 35, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        color: const Color(0xFF0d80eb),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.close, size: 30, color: Colors.white,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Perfil",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 5),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 6),
                  width: 110,
                  height: 110,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/users/user1.jpg'),
                  ),
                ),
              ),
            ],
          ),
          Text(
            "@Juan123",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(245);
}