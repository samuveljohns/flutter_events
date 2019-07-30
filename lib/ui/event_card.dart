import 'package:event/modal/event_modal.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Event event;
  EventCard({@required this.event});

  @override
  Widget build(BuildContext context) {
    print(event.eventName);
    return Container(
      child: Card(
        child:InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: (){
            print('Card tapped');
          },
          child: Container(
            height: 50,
            child: Text(event.eventName),
          ),
        )
      ),
    );
  }

  _buildCard( event){
    Stack(children: <Widget>[
      new Card(
        child: new Padding(
          padding: new EdgeInsets.all(15.0),
          child: new Column(
            children: <Widget>[
//              new SizedBox(
//                height: 184.0,
//                child: new Stack(
//                  children: <Widget>[
//                    new Positioned.fill(
//                      child: new Image.asset(
//                        imagePath,
//                        //package: destination.assetPackage,
//                        fit: BoxFit.contain,
//                      ),
//                    ),
//                  ],
//                ),
//              ),
              new Padding(
                padding: new EdgeInsets.all(
                  7.0,
                ),
                child: new Text(
                  event.eventName,
                  style: new TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(
                  0.0,
                ),
                child: new Text(
                  "",
                  style: new TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      ),
      new Positioned.fill(
          child: new Material(
              color: Colors.transparent,
              child: new InkWell(
                onTap: () => null,
              )))
    ]);
  }
}

