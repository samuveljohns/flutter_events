import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event/modal/event_modal.dart';
import 'package:event/ui/event_card.dart';
import 'package:flutter/material.dart';
import 'package:event/services/firebase_services.dart';

class LocalEventScreen extends StatelessWidget {
  FirebaseDatabase api = new FirebaseDatabase();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: StreamBuilder<QuerySnapshot>(
            stream: api.getLocalEvents() ,
            builder:(context, snapshot) {

              if(snapshot.hasData){
                var newList = snapshot.data.documents.map((snapshot){
                  return Event.fromSnapshot(snapshot);
                }).toList();
                print("print");
                print(newList.length);
                return ListView.builder(
                    itemCount: newList.length,
                    itemBuilder: (context, index)=> EventCard(event: newList[index])
                );
              }
              else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
    );
  }
}

