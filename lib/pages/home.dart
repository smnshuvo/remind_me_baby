import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Remind me baby",
        ),
        actions: <Widget>[
          // leads to the setter page
          IconButton(
            icon: Icon(
              Icons.update
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/scheduler");
            },
          ),
          // leads to the group page
          IconButton(
            icon: Icon(
                Icons.notifications_active
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/group");
            },
          ),
        ],
      ) ,
      body: SafeArea(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
