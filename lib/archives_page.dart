//import 'dart:html';

import 'package:flutter/material.dart';

class ArchivesPage extends StatelessWidget {

  const ArchivesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        title: const Text(
          'Favoris',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800
          ),
          ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: const Color.fromARGB(255, 210, 210, 230),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 350,
                  width: 300,
                  child: Image.asset("lib/assets/images/freestyler-best-belgrade.jpg")
                ),
              ],
            )
          ),
        ),
      )
    );
  }
}