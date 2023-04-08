import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class DataUpload extends StatelessWidget {
  //const DataUpload({Key? key}) : super(key: key);
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter a note',
            ),
          ),
          ElevatedButton(onPressed: () async{
            await users.add({'name': 'Abhishek','email':'abhisahu162001@gmail.com','password': 'abhiqwe'}).then((value) => print('User Added'));
          }, child: Text('Submit Data'))
        ],
      ),
    );
  }
}
