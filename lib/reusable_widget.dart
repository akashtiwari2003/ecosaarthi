import 'package:flutter/material.dart';

AppBar appBarr(){
  return AppBar(
    toolbarHeight: 70,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_rounded))
    ],
    backgroundColor: const Color(0xFF7AC533).withOpacity(0.8),
    title: const Text('Location Update'),
    centerTitle: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
  );
}