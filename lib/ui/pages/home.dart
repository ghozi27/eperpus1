import 'package:eperpus1/ui/pages/detail/detail1.dart';
import 'package:eperpus1/ui/pages/detail/detail2.dart';
import 'package:eperpus1/ui/pages/detail/detail3.dart';
import 'package:eperpus1/ui/pages/detail/detail4.dart';
import 'package:eperpus1/ui/pages/detail/detail5.dart';
import 'package:eperpus1/ui/pages/detail/detail6.dart';
import 'package:eperpus1/ui/pages/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("E-Perpus");

  get crossAxisAlignment => null;

  @override
  Widget build(BuildContext context) {

    
    // to get size
    var size = MediaQuery.of(context).size;

    //style
    var cardTextStyle = TextStyle(fontFamily: "Montserrat Regular", fontSize: 14, color: Color.fromRGBO(63, 63, 63, 1));

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                              if(this.cusIcon.icon == Icons.search){
                                this.cusIcon = Icon(Icons.cancel);
                                this.cusSearchBar = TextField(
                                  textInputAction: TextInputAction.go,
                                  decoration: InputDecoration(
                                    hintText: "Search...",
                                  ),
                                  style: TextStyle(
                                    fontFamily: "Montserrat Regular", fontSize: 20,color: Colors.white
                                  ),
                                );
                              }
                              else{
                                this.cusIcon = Icon(Icons.search);
                                this.cusSearchBar = Text("E-Perpus");
                              }
                            });
            },
            icon: cusIcon,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        title: cusSearchBar,
        backgroundColor: Colors.blue,
      ),
      drawer: MainDrawer(),

      body: Stack(
        children: [
          Container(
            height: size.height *.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/top_header.png')
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Container(
                  height: 10,
                  margin: EdgeInsets.only(bottom: 20,),
                  
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    primary: false,
                    children: [
                      // card1
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(),
                                ));
                          },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Ink.image(
                                    height: 110,
                                    image: AssetImage(
                                      'assets/images/asset2.jpg'
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 9, right: 16, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'buku Hadits (tentang wanita)',
                                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                                    ),
                                    Text(
                                      'Penulis Syaikh Muhammad Asy-Syarif', 
                                      style: TextStyle(fontSize: 9.0, color: Colors.black54),
                                    ),
                                    Text(
                                      '100.000Rp'
                                    )
                                  ],
                                ),
                              ), 
                            ],
                          ),
                        ),
                      ),
                      // card2
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => DetailsScreen2(),
                              ));
                          },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Ink.image(
                                    height: 110,
                                    image: AssetImage(
                                      'assets/images/asset3.jpg'
                                    ),
                                  ),
                                ],
                              ),
                             Padding(
                                padding: const EdgeInsets.only(left: 9, top: 9, right: 16, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'buku Hadits ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Penulis -', 
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Text(
                                      '45.000Rp'
                                    )
                                  ],
                                ),
                              ),       
                          ],
                        ),
                       ),
                      ),
                      // card3
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => DetailsScreen3(),
                              ));
                          },
                        child: Column(
                           mainAxisSize: MainAxisSize.min,
                           crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Ink.image(
                                    height: 110,
                                    image: AssetImage(
                                      'assets/images/asset5.jpg'
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 9, right: 16, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'buku Hadits (tentang wanita)',
                                      style: TextStyle(fontSize: 12.0, color: Colors.black),
                                    ),
                                    Text(
                                      'Penulis Syaikh Muhammad Asy-Syarif', 
                                      style: TextStyle(fontSize: 9.0, color: Colors.black54),
                                    ),
                                    Text(
                                      '100.000Rp'
                                    )
                                  ],
                                ),
                              ),
                          ],
                        ),
                       ),
                      ),
                      // card4
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => DetailsScreen4(),
                              ));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Ink.image(
                                    height: 110,
                                    image: AssetImage(
                                      'assets/images/asset1.jpg'
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 9, right: 16, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Buku Hadits',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Penulis Bukhari Muslim',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Text(
                                      '50.000Rp'
                                    )
                                  ],
                                ),
                              ),
                          ],
                        ),
                       ),
                      ),
                      // card5
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => DetailsScreen5(),
                              ));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Ink.image(
                                    height: 110,
                                    image: AssetImage(
                                      'assets/images/asset4.jpg'
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 9, right: 16, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Buku Hadits',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Penulis Bukhari Muslim',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Text(
                                      '100.000Rp'
                                    )
                                  ],
                                ),
                              ),
                          ],
                        ),
                       ),
                      ),
                      // card6
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        ),
                        elevation: 5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => DetailsScreen6(),
                              ));
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Ink.image(
                                    height: 110,
                                    image: AssetImage(
                                      'assets/images/hadist.jpg'
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 9, top: 9, right: 16, bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Buku Hadits',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'Penulis Bukhari Muslim',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Text(
                                      '50.000Rp'
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    crossAxisCount: 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}