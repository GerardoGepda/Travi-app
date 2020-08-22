import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import '../scripts/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void  _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  GoogleMapController _mapController;
  bool isMapCreated = false;

  void _onMapCreated(GoogleMapController controller){
    _mapController = controller;
    isMapCreated = true;
    changeMapMode();
    setState(() {
      
    });
  }

  Future<String> getJsonFile(String path)async{
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String mapStyle){
    _mapController.setMapStyle(mapStyle);
  }

  void changeMapMode(){
    getJsonFile('assets/mapstyle.json').then(setMapStyle);
  }


  //var for the current location
  Location _tracker = Location();

  void currentLocation(){
    _tracker.getLocation().then((value) => {
        _mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        //bearing: 100,
        target: LatLng(value.latitude, value.longitude),
        tilt: 0,
        zoom: 18,
      ))),
      });
  }

  @override
  Widget build(BuildContext context) {

    if(isMapCreated){
      changeMapMode();
    }

    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavBar(indexBar: 0,),

    //Drawer code
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1289f7), Color(0xFF38b6de)],
          begin: const FractionalOffset(1.0, 0.60),
          end: const FractionalOffset(1.0, 1.0)
          ),
        ),
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 10),
                  child:  IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white), 
                    onPressed: (){
                      _closeDrawer();
                    },
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    margin: EdgeInsets.only(bottom: 7.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/users/user1.jpg'),
                    ),
                  ),
                  Text(
                    "@juan123",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.only(top: 15.0, left: 30.0, right: 30.0),
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "PERFIL",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                leading: Icon(
                  Icons.av_timer,
                  color: Colors.white,
                ),
                title: Text(
                  "ORGANIZA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  "AJUSTES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                leading: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                title: Text(
                  "CHAT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/chat');
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                leading: Icon(
                  Icons.directions_bus,
                  color: Colors.white,
                ),
                title: Text(
                  "MIS VIAJES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    "SALIR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //End of Drawer code

      //Body code
      body: Stack(
        children: <Widget>[
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target:LatLng(13.701339, -89.224429),
              zoom: 12,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 35, left: 10, right: 10),
              child: Card(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                          icon: Icon(Icons.menu, color: Colors.black), 
                          onPressed: (){
                            _openDrawer();
                          },
                          ),
                          Expanded(
                            child: Text(
                              "San Salvador, El Salvador",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          IconButton(
                          icon: Icon(Icons.close, color: Colors.black), 
                          onPressed: (){}
                          ),
                          IconButton(
                          icon: Icon(Icons.mic, color: Colors.black), 
                          onPressed: null
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.location_on,
                              color: const Color(0xFF0d80eb),
                            ),
                          ),
                          Container(
                            width: 300.0,
                            height: 35.0,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: "Tu ubicación",
                                contentPadding: EdgeInsets.only(left: 10),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert, color: Colors.black), 
                            onPressed: null
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.directions_bus,
                              color: const Color(0xFF0d80eb),
                            ),
                          ),
                          Container(
                            width: 300.0,
                            height: 35.0,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: "Parada",
                                contentPadding: EdgeInsets.only(left: 10),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Mostrar Rutas"),
                            IconButton(
                              color: Colors.blue,
                              icon: Icon(Icons.drag_handle),
                              onPressed: null, 
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 120.0, right: 5.0),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: (){
                currentLocation();
              },
              child: Icon(
                Icons.gps_fixed,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      //End of Body code

    );
  }
}
