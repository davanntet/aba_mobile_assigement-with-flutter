import 'package:aba_mobile_assigement/components/notification/NotificationAppBar.dart';
import 'package:aba_mobile_assigement/components/notification/NotificationBody.dart';
import 'package:flutter/material.dart';

  class AppNotification extends StatefulWidget {
    const AppNotification({Key? key}) : super(key: key);

    @override
    State<AppNotification> createState() => _AppNotificationState();
  }

  class _AppNotificationState extends State<AppNotification> {
    late TabController _tabController;

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
          length: 2,
          child:Scaffold(
            appBar: NoficationAppBar(),
            body: const NoficationBody()
          )
      );
    }
  }
