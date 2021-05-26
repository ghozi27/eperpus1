import 'package:eperpus1/ui/pages/detail/profiledetail.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
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
                    Text(
                      'User Name', 
                      style: TextStyle(
                        fontSize: 22, 
                        color: Colors.white,
                        ),
                      ),
                      Text(
                      'UserName@gmail.com', 
                      style: TextStyle( 
                        color: Colors.white,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('profile', style: TextStyle(fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,MaterialPageRoute(
                  builder: (context) => ProfileDetail(),
              ));
            },
            ),
            ListTile(
              onLongPress: () {},
              leading: Icon(Icons.settings),
              title: Text('settings', style: TextStyle(fontSize: 18,
              ),
            ),
            onTap: null,
            ),
            ListTile(
              onLongPress: () {},
              leading: Icon(Icons.arrow_back),
              title: Text('Logout', style: TextStyle(fontSize: 18,
              ),
            ),
            onTap: null,
            ),
          ],
        ),
      );
  }
}