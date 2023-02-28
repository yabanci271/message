// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_application_3/Pages/favoritescreen.dart';
import 'package:flutter_application_3/Pages/main_pages.dart';
import 'package:flutter_application_3/main_body/drawer.dart';

class page_tabs extends StatefulWidget {
  const page_tabs({super.key});

  @override
  State<page_tabs> createState() => _page_tabsState();
}

class _page_tabsState extends State<page_tabs> {
  void _screentap(int index) {
    setState(() {
      _selectscrrenindex = index;
    });
  }

  int _selectscrrenindex = 0;

  final List<Map<String, dynamic>> _screens = [
    {'screen': Mainpage(), 'title': 'دليل سياحي'},
    {'screen': FavoriteScreeen(), 'title': 'الرحلات المفضلة'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectscrrenindex]['title']),
        centerTitle: true,
      ),
      drawer: Drawerpage(),
      body: _screens[_selectscrrenindex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _screentap,
          backgroundColor: Color.fromARGB(255, 143, 112, 228),
          selectedIconTheme: IconThemeData(color: Colors.amber),
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.white,
          currentIndex: _selectscrrenindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: "DASHBOARED",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                label: "favorite"),
          ]),
    );
  }
}
