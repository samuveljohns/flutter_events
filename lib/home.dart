import 'package:event/global_event.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
       length: 2,
       child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("Flutter events"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Globale"),
                Tab(text:"Event")
              ],
            ),
          ),
          body: TabBarView(
              children:<Widget>[
                Tab(child: GlobalEventScreen()),
                Tab(text: "Local")
              ]
          ),
        ),
      );
  }
}
