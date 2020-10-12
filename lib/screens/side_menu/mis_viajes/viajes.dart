import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AboutPage.dart';
import 'TripCard.dart';

class Viajes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViajesBar(),
      //bottomNavigationBar: CreateMessage(),
      body: Viajesbody(),
    );
  }
}

class ViajesBar extends StatelessWidget implements PreferredSizeWidget {
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

class Viajesbody extends StatelessWidget {
  const Viajesbody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mis Viajes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.add_circle_outline,
                              size: 30,
                            ),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TripCard(
                    img: AssetImage('assets/images/Eva.png'),
                    duration: 'Agosto - 2020',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('assets/images/Eva.png'),
                            place: '1',
                          );
                        }),
                      );
                    }),
                TripCard(
                    img: AssetImage('assets/images/Eva.png'),
                    duration: 'Agosto - 2020',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('assets/images/Eva.png'),
                            place: '2',
                          );
                        }),
                      );
                    }),
                TripCard(
                    img: AssetImage('assets/images/Eva.png'),
                    duration: 'Agosto - 2020',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('assets/images/Eva.png'),
                            place: '3',
                          );
                        }),
                      );
                    }),
                TripCard(
                    img: AssetImage('assets/images/Eva.png'),
                    duration: 'Agosto - 2020',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('assets/images/Eva.png'),
                            place: '4',
                          );
                        }),
                      );
                    }),
                TripCard(
                    img: AssetImage('assets/images/Eva.png'),
                    duration: 'Agosto - 2020',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('assets/images/Eva.png'),
                            place: '5',
                          );
                        }),
                      );
                    }),
                TripCard(
                    img: AssetImage('assets/images/Eva.png'),
                    duration: 'Agosto - 2020',
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AboutPage(
                            image: AssetImage('assets/images/Eva.png'),
                            place: '6',
                          );
                        }),
                      );
                    }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
