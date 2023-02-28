// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Pages/filter_page.dart';
import 'package:flutter_application_3/Pages/main_pages.dart';
import 'package:flutter_application_3/Pages/page_menu.dart';

class Drawerpage extends StatelessWidget {
  const Drawerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("دليلك السياحي"), centerTitle: true),
            body: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 15)),
                ListTile(
                  leading: Icon(
                    Icons.card_travel,
                    size: 40,
                  ),
                  title: Text("الرحلات", style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => page_tabs(),
                        ));
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.filter_list,
                    size: 40,
                  ),
                  title: Text(
                    "الفلترة",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => Filterpage(),
                        ));
                  },
                ),
              ],
            )),
      ),
    );
  }
}
