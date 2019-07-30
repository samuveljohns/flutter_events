import 'package:event/modal/event_modal.dart';
import 'package:event/services/api_services.dart';
import 'package:event/ui/event_card.dart';
import 'package:flutter/material.dart';

class GlobalEventScreen extends StatelessWidget {
  ApiResponse api = new ApiResponse();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Event>>(
          future: api.getEvents(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index)=> EventCard(event: snapshot.data[index])
              );
            }else{
              return CircularProgressIndicator();
            }
        })
    );
  }
}

