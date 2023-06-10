import 'package:flutter/material.dart';

AppBar NoficationAppBar(){
  return AppBar(
    elevation: 0,
    leading: Builder(
      builder: (context) => IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          }),
    ),
    title: const Row(
      children: [
        Stack(
          children: [
            Text(
              "ABA",
              style: TextStyle(fontSize: 20),
            ),
            Text("        '",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.end),
          ],
        ),
        Text(
          " Notifications",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
        ),
      ],
    ),
  );
}