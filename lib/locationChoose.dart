import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationChoose extends StatefulWidget {
  const LocationChoose({Key? key}) : super(key: key);

  @override
  State<LocationChoose> createState() => _LocationChooseState();
}

class _LocationChooseState extends State<LocationChoose> {
  final List<String> items = List<String>.generate(10000, (i) => '$i');
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
                child: Column(children: [
                  StreamBuilder(
        stream: FirebaseFirestore.instance.collection("location").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CupertinoActivityIndicator());
          }
          return Container(
              margin: const EdgeInsets.all(10.0),
              decoration: new BoxDecoration(color: Colors.white, boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  offset: Offset(0.0, 2.0),
                ),
              ]),
              child: ListView(
                  shrinkWrap: true,
                  children: snapshot.data!.docs.map((snap) {
                    return Card(
                        child: ListTile(
                      // leading: Image.network(snap['logo'].toString()),
                      title: Text(snap['locality'].toString() + ' ' + snap['country'].toString()),
                      subtitle: Text(snap['lat'].toString() + ', ' + snap['lat'].toString()),
                      onTap: () {
                        name:
                        snap['lat'];
                        desc:
                        snap['lon'];
                        launch('https://www.google.com/maps/search/?api=1&query='+snap['lat'].toString()+','+snap['lat'].toString());
                      },
                    ));
                  }).toList()));
        },
      ),
    ]))));
  }
}
