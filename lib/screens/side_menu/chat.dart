import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHeader(),
      //bottomNavigationBar: CreateMessage(),
      body: ChatBody(),
    );
  }
}

class MyHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 35.0, left: 17.0, right: 17.0, bottom: 20.0),
      color: const Color(0xFF0d80eb),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                padding: EdgeInsets.all(0),
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "TRAVI",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Righteous",
                  fontSize: 25.0,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}

class ChatBody extends StatelessWidget {
  final String texto =
      "Buena día. A través de este medio podra comunicarse con nuestro equipo en caso de un incidente o problema dentro de la unidad o sobre nuestra plataforma.";
  final String texto2 =
      "Buena día. Quisiera reportar una conducción temeraria por parte del motorista de la ruta 41-F, rumbo a Soyapango en la cual me encuentro en estos momentos.";
  final String texto3 =
      "Agradecemos la información, se realizará un reporte sobre la unidad y sobre su conductor, y se enviara a la empresa correspondiente.";
  final String texto4 = "Muchas gracias por su atención y por su trabajo.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 50.0),
          color: Colors.grey[50],
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 30),
                alignment: Alignment.center,
                child: Text(
                  "Martes 4 de Agosto de 2020",
                  style: TextStyle(
                    color: const Color(0xFF0d80eb),
                  ),
                ),
              ),
              _receivedMessage(texto, "9:01 AM"),
              _myMesagge(texto2, "9:02 AM"),
              _receivedMessage(texto3, "9:03 AM"),
              _myMesagge(texto4, "9:04 AM"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CreateMessage(),
        ),
      ],
    );
  }

  Container _myMesagge(String message, String messageHour) {
    return Container(
      margin: EdgeInsets.only(bottom: 35.0),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            margin: EdgeInsets.only(left: 20.0, right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/users/user1.jpg'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints(
              minWidth: 70.0,
              maxWidth: 250.0,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF0d80eb),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                  spreadRadius: -7,
                  offset: Offset(1.0, 2.0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Text(
                  message,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    messageHour,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _receivedMessage(String message, String messageHour) {
    return Container(
      margin: EdgeInsets.only(bottom: 35.0),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints(
              minWidth: 75.0,
              maxWidth: 250.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                  spreadRadius: -7,
                  offset: Offset(1.0, 2.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  message,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(messageHour),
                ),
              ],
            ),
          ),
          Container(
            width: 50.0,
            height: 50.0,
            margin: EdgeInsets.only(left: 20.0, right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/users/travi.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

class CreateMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      padding: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            spreadRadius: -7,
            offset: Offset(1.0, 2.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 310.0,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Escribe un mensaje",
              ),
            ),
          ),
          Icon(
            Icons.mic,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
