




import 'package:aba_mobile_assigement/utils/ListRoute.dart';
import 'package:flutter/material.dart';

AppBar AppAppBar() {
  return AppBar(
    elevation: 0,
    leading: Builder(builder:(context)=>IconButton(
        onPressed: ()=>{
          Scaffold.of(context).openDrawer()
        },
        icon: const Icon(Icons.menu),
        splashRadius: 25,
    ),
    ),
    title: const Stack(
      children: [
        Text("ABA",style: TextStyle(fontSize: 25),),
        Text("        '",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),textAlign:TextAlign.end),
      ],
    ),
    actions: [
      Builder(builder: (context)=>IconButton(
          onPressed: (){
            Navigator.of(context).pushNamed(ListRoute.notification);
          },
          splashRadius: 25,
          icon: const Icon(Icons.notifications_outlined,size: 30,)
      ),),
      Builder(
        builder: (context)=>IconButton(
            onPressed: (){
              Navigator.of(context).pushNamed(ListRoute.contact_us);
            },
            splashRadius: 25,
            icon: const Icon(Icons.phone_in_talk_outlined,
              size: 30,))
        ,),
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 10,top: 10,bottom: 10),
        width: 35,
        decoration: BoxDecoration(
            color: Color(0xFFE64D3D),
            borderRadius: BorderRadius.circular(10)
        ),
        child: IconButton(onPressed: (){},splashRadius: 27, icon: Icon(Icons.qr_code_2,size: 20,)),
      ),
      const SizedBox(width: 10,)
    ],
  );
}
