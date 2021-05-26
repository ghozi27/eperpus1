import 'dart:ui';

import 'package:eperpus1/ui/pages/home.dart';
import 'package:flutter/material.dart';

class DetailsScreen4 extends StatefulWidget {
  @override
  _DetailsScreen4State createState() => _DetailsScreen4State();
}

class _DetailsScreen4State extends State<DetailsScreen4> {



  get crossAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => Home(),));
            },
        ),
        title: Text('E-Perpus'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('We are in Detail Page now.',
            style: TextStyle(fontSize: 22,),),
          ],
        ),
      ),
    );
  }
}