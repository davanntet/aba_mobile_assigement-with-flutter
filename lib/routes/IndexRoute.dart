



import 'package:aba_mobile_assigement/utils/ListRoute.dart';
import 'package:aba_mobile_assigement/views/AppContact.dart';
import 'package:aba_mobile_assigement/views/Notification.dart';
import 'package:flutter/material.dart';

import '../views/app.dart';

class RouteProvider {
  String name="davann";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print("Route:${settings.name}");
    if(settings.name == ListRoute.notification){
      return MaterialPageRoute(builder: (_)=>AppNotification());
    }else if(settings.name == ListRoute.contact_us){
      return MaterialPageRoute(builder: (_)=>AppContact());
    }
    return MaterialPageRoute(builder: (_)=>App());
  }
}