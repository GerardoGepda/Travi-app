import 'package:flutter/material.dart';
import 'package:travi_screens/scripts/bottomnavbar.dart';

class RoutesAndBuses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MyHeader(),
        body: Container(
          child: TabBarView(
            children: <Widget>[
              BusesTab(),
              CommentsTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHeader extends StatelessWidget implements PreferredSizeWidget {
  //var with the searchbar section
  static final Widget searchBar = Container(
      margin: const EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              height: 30,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Busca una parada",
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ));

  //var with the tabBar section
  static final Widget barBusesAndComments = Container(
    margin: EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0),
    child: TabBar(
      indicatorColor: Colors.white,
      indicator: UnderlineTabIndicator(
        //borderSide: BorderSide(width: 2.0),
        insets: EdgeInsets.symmetric(horizontal: 20.0),
      ),
      labelStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      tabs: <Widget>[
        Tab(text: "Rutas"),
        Tab(text: "Comentarios"),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: const Color(0xFF0d80eb),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/parada.jpg',
            width: 600,
            height: 200,
            fit: BoxFit.cover,
          ),
          searchBar,
          barBusesAndComments,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(300.0);
}

class BusesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          _busData(
              'ico_ruta100.jpg', "Ruta 100", "San Salvador - Ciudad Delgado"),
          _busData('ico_ruta113.jpg', "Ruta 119", "San Salvador - El poy"),
          _busData('ico_ruta101.jpg', "Ruta 101", "San Salvador - Santa Tecla"),
          _busData(
              'ico_ruta138.jpg', "Ruta 138", "San Salvador - San Luis Talpa"),
          _busData(
              'ico_ruta100.jpg', "Ruta 100", "San Salvador - Ciudad Delgado"),
          _busData('ico_ruta113.jpg', "Ruta 119", "San Salvador - El poy"),
          _busData('ico_ruta101.jpg', "Ruta 101", "San Salvador - Santa Tecla"),
          _busData(
              'ico_ruta138.jpg', "Ruta 138", "San Salvador - San Luis Talpa"),
        ],
      ),
    );
  }

  ListTile _busData(String img, String routeName, String routesSites) {
    return ListTile(
      leading: Image.asset(
        'assets/images/$img',
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(routeName),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 20,
              ),
            ],
          ),
        ],
      ),
      subtitle: Text(routesSites),
    );
  }
}

class CommentsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          makeComment,
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Destacados",
              style: TextStyle(
                color: const Color(0xFF0d80eb),
                fontSize: 16,
              ),
            ),
          ),
          _comments('user1.jpg', '@Juan123', '28/07/2020'),
          _comments('user1.jpg', '@Carlos456', '04/09/2020'),
          _comments('user1.jpg', '@Juan123', '07/11/2020'),
          _comments('user1.jpg', '@Juan123', '07/11/2020'),
        ],
      ),
    );
  }

  final Widget makeComment = Container(
    margin: EdgeInsets.only(top: 10.0),
    child: Row(
      //mainAxisSize: MainAxisSize.min, //prueba
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          margin: EdgeInsets.only(left: 20.0, right: 10.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/users/user1.jpg'),
          ),
        ),
        Card(
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 250.0,
                height: 55.0,
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: false,
                    border: InputBorder.none,
                    hintText: "Escribe un comentario",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10.0, bottom: 5.0),
                child: Icon(
                  Icons.send,
                  color: const Color(0xFF0d80eb),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Container _comments(String imgUser, String user, String commentDate) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10, bottom: 10),
      //padding: EdgeInsets.all(7.0),
      child: Card(
        color: Colors.grey[200],
        child: Row(
          mainAxisSize: MainAxisSize.min, //prueba, ver si evita que se expanda
          children: <Widget>[
            Container(
              width: 50.0,
              height: 50.0,
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/$imgUser'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min, //prueba, evitando expansion
                children: <Widget>[
                  Container(
                    width: 303.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(user),
                        ),
                        Container(
                          child: Text(commentDate),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    width: 303.0,
                    child: Text(
                      "Presencia notable del CAM por la zona en el horario laboral. Se debe tener cuidado por las noches",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    width: 303.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Responder",
                          style: TextStyle(
                            color: const Color(0xFF0d80eb),
                          ),
                        ),
                        Text(
                          "Votar",
                          style: TextStyle(
                            color: const Color(0xFF0d80eb),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 20,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
