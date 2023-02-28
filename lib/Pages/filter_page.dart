// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/main_body/drawer.dart';

class Filterpage extends StatefulWidget {
  const Filterpage({super.key});

  @override
  State<Filterpage> createState() => _FilterpageState();
}

class _FilterpageState extends State<Filterpage> {
  var _ifinsummer = false;
  var _ifinwinter = false;
  var _ifforfamily = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الفلترة"),
        centerTitle: true,
      ),
      drawer: Drawerpage(),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SwitchListTile(
            title: Text('الرحلات الصيفية'),
            subtitle: Text("اضغط لاظهار كل الرحلات الصيفية او اللغائها"),
            value: _ifinsummer,
            onChanged: (newvalue) {
              setState(() {
                _ifinsummer = newvalue;
              });
            },
          ),
          SwitchListTile(
            title: Text('الرحلات الشتوية'),
            subtitle: Text("اضغط لاظهار كل الرحلات الشتوية او اللغائها"),
            value: _ifinwinter,
            onChanged: (newvalue) {
              setState(() {
                _ifinwinter = newvalue;
              });
            },
          ),
          SwitchListTile(
            title: Text('الرحلات العائلية'),
            subtitle: Text("اضغط لاظهار كل الرحلات العائلية او اللغائها"),
            value: _ifforfamily,
            onChanged: (newvalue) {
              setState(() {
                _ifforfamily = newvalue;
              });
            },
          ),
        ],
      ),
    );
  }
}
