import 'dart:ui';

import 'package:eperpus1/ui/pages/home.dart';
import 'package:flutter/material.dart';

class ProfileDetail extends StatefulWidget {
  @override
  _ProfileDetailState createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {



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
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            Container(
              width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 50,
                        bottom: 50.0,
                        right: 250,
                      ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage( 
                            'https://images.pexels.com/photos/7907687/pexels-photo-7907687.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                          ),
                          fit: BoxFit.fill
                        ),
                      ),
              ),
            Padding(
              padding: const EdgeInsets.only( right: 35,),
              child: Column(
                children: [
                  Text('Email           : UserName@gmail.com', 
                  style: TextStyle(fontSize: 20,),
                  ),
                ],
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 20, right: 180,),
              child: Column(
                children: [
                  Text('Passwoard : *******',
                  style: TextStyle(
                    fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only( top: 20, right: 159,),
              child: Column(
                children: [
                  Text('Username   : USER123',
                  style: TextStyle(
                    fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}