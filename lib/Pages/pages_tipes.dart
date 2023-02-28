// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main_body/drawer.dart';
import 'package:flutter_application_3/main_body/trip_detial.dart';
import 'package:flutter_application_3/materai/material.dart';

class Pagestips extends StatelessWidget {
  Pagestips({
    super.key,
    required this.title,
    required this.placeid,
  });

  final String placeid, title;
  late final filterTrips = Trips_data.where((trip) {
    return trip.categories.contains(placeid);
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      drawer: Drawerpage(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Triipsdetil(
            duration: filterTrips[index].duration,
            imageUrl: filterTrips[index].imageUrl,
            sesson: filterTrips[index].season,
            title1: filterTrips[index].title,
            imageUrl1: filterTrips[index].imageUrl,
            actives: filterTrips[index].activities.toList(),
            program: filterTrips[index].program.toList(),
            placeid: filterTrips[index].id,
          );
        },
        itemCount: filterTrips.length,
      ),
    );
  }
}
