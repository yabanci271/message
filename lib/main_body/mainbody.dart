// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Pages/pages_tipes.dart';
import 'package:flutter_application_3/Pages/trip_screen.dart';
import 'package:flutter_application_3/materai/material.dart';

class Mainbody extends StatelessWidget {
  const Mainbody({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.id,
  });
  final String imageUrl, id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => Pagestips(title: title, placeid: id),
              ));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black38,
              ),
            )
          ],
        ),
      ),
    );
  }
}
