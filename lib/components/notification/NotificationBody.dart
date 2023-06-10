import 'package:aba_mobile_assigement/components/notification/NotificationAnnouncement.dart';
import 'package:aba_mobile_assigement/components/notification/NotificationTransaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NoficationBody extends StatelessWidget {
  const NoficationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Theme.of(context).colorScheme.primary,
          child: const TabBar(


            tabs: [
              Tab(
                text: "TRANSACTIONS",
              ),
              Tab(text: "ANNOUNCEMENTS")
            ],
            labelColor: Colors.white,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.white,
            labelStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        const Flexible(
          child: TabBarView(

            children: [
              NotificationTransaction(),
              NotificationAnnouncement()
            ],
          ),
        ),

      ],
    );
  }
}
