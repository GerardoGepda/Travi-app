import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final AssetImage img;
  final String duration;
  final Function function;
  TripCard({
    this.img,
    this.duration,
    this.function,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Material(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              elevation: 200.0,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: img,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: Text(
                duration,
                style: TextStyle(
                  fontSize: 25,
//                fontWeight: FontWeight.bold,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
