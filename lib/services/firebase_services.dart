import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:event/modal/event_modal.dart';

class FirebaseDatabase{
  getLocalEvents(){
    return Firestore.instance.collection('FlutterEvents').snapshots();
  }

  storeNewEvent(Event event, context){
    Firestore.instance.collection('FlutterEvents').add({
      'eventName' : event.eventName,
      'city' : event.city,
      'eventDate':event.eventDate
    }).then((value){
      print('Success');
    }).catchError((error){
      print(error);
    });
  }
}