// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_typing_uninitialized_variables, dead_code

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Pages/trip_screen.dart';
import 'package:flutter_application_3/materai/trip_material.dart';

class Triipsdetil extends StatelessWidget {
  const Triipsdetil(
      {super.key,
      required this.duration,
      required this.imageUrl,
      required this.sesson,
      required this.title1,
      required this.imageUrl1,
      required this.actives,
      required this.program,
      required this.placeid});

  final int duration;
  final String imageUrl;
  final sesson;
  final String title1;
  final String imageUrl1;
  final actives;
  final program;
  final placeid;

  String seasonname() {
    switch (sesson) {
      case Season.Winter:
        return "شتاء";
        break;
      case Season.Autumn:
        return "خريف";
        break;
      case Season.Summer:
        return "صيف";
        break;
      case Season.Spring:
        return "ربيع";
        break;
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Tripdetil(
                title: title1,
                imageUrl1: imageUrl1,
                active: actives,
                program: program,
                placeid: placeid,
              ),
            )).then((value) => null);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(10),
        elevation: 7,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Stack(children: [
                Image.network(
                  imageUrl,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.80),
                      ],
                          // ignore: prefer_const_literals_to_create_immutables
                          stops: [
                        0.6,
                        1
                      ])),
                ),
                Container(
                    height: 300,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      title1,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("$duration ايام")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud_done,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(seasonname())
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.local_activity,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("$duration ايام")
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
