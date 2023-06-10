
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDataFormat{
  DrawerDataFormat({required this.icon,required this.title});
  final IconData icon;
  final String title;
}

class DrawerData{
  static List<DrawerDataFormat> list=[
    DrawerDataFormat(icon: Icons.calendar_month_sharp, title:"Scheduled Payment"),
    DrawerDataFormat(icon: Icons.fact_check_sharp, title: "Checkbook"),
    DrawerDataFormat(icon: Icons.location_on_sharp, title: "ABA Places"),
    DrawerDataFormat(icon: Icons.currency_exchange, title: "Exchange Rates"),
    DrawerDataFormat(icon: Icons.map, title: "Locator"),
    DrawerDataFormat(icon: Icons.add_link_outlined, title: "Invite Friend"),
    DrawerDataFormat(icon: Icons.wifi_calling_3_outlined, title: "Contact Us"),
    DrawerDataFormat(icon: Icons.safety_check, title: "Terms and Conditions"),
    DrawerDataFormat(icon: Icons.settings_outlined, title: "Settings")
  ];
}