// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main_body/mainbody.dart';
import 'package:flutter_application_3/materai/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 5),
        children: material
            .map((catogray) => Mainbody(
                  imageUrl: catogray.imageUrl,
                  title: catogray.title,
                  id: catogray.id,
                ))
            .toList());
  }
}
