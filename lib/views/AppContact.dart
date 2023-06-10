import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppContact extends StatelessWidget {
  const AppContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Builder(builder: (context)=>IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }
        ),),
        title: Text("Contact US"),
      ),
    );
  }
}
