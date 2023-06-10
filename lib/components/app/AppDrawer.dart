
import 'package:aba_mobile_assigement/components/app/IconTitleTemplate.dart';
import 'package:aba_mobile_assigement/models/DrawerData.dart';
import 'package:flutter/material.dart';

import '../../utils/ColorAsset.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorAsset.drawerColor,
      child: Column(
        children: [
          // UserAccountsDrawerHeader(
          //     //arrowColor: ColorAsset.drawerColor,
          //     currentAccountPicture: CircleAvatar(
          //       child: Icon(Icons.person,size: 50,),
          //     ),
          //     accountName: Row(
          //       children: [
          //                   Text("Davann",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
          //                   Text("Tet",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),
          //                   Text("App ID:xxxxxx",style: TextStyle(color: Color(0xFFA3BDCA),fontSize: 15,fontWeight: FontWeight.w400),)
          //       ],
          //     ),
          //     accountEmail: Text("davanncr@gmail.com")
          //     )


          Container(
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.white,width: 0.50)
                )
            ),
            child: Row(
              children: [

                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      color: Colors.grey,
                      border: Border.all(color: Colors.white,width: 2.5,style: BorderStyle.solid,)
                    ),
                    child: Icon(Icons.person,color: Colors.white,size: 75,),
                  ),
                SizedBox(width: 10,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Davann",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                    Text("Tet",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500)),
                    Text("App ID:xxxxxx",style: TextStyle(color: Color(0xFFA3BDCA),fontSize: 15,fontWeight: FontWeight.w400),)
                  ],
                )
              ],
            ),
          ),

          ...List.generate(DrawerData.list.length, (index) => IconTitleTemplate(data: DrawerData.list[index])),
          Spacer(),
          Divider(color: Colors.white,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Version:",style: TextStyle(color: Colors.white),),
                Text("1.0.0",style: TextStyle(color: Colors.white),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
