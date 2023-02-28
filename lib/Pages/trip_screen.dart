// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, prefer_typing_uninitialized_variables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Tripdetil extends StatelessWidget {
  const Tripdetil(
      {super.key,
      required this.title,
      required this.imageUrl1,
      required this.active,
      required this.program,
      required this.placeid});
  final String title;
  final String imageUrl1;
  final List<String> active;
  final List<String> program;
  final String placeid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(imageUrl1))),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "الانشطة",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 1, 132, 240)),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              child: ListView.builder(
                itemCount: active.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      elevation: 0.3,
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(active[index])));
                },
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "البرنامج اليومي",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 1, 132, 240)),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(10)),
              height: 400,
              child: ListView.builder(
                itemCount: program.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.amber,
                          child: Text("يوم ${index + 1}"),
                        ),
                        title: Text(program[index]),
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop();
          placeid;
        },
      ),
    );
  }
}
