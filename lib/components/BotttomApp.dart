import 'package:aba_mobile_assigement/views/Location.dart';
import 'package:aba_mobile_assigement/views/Payment.dart';
import 'package:aba_mobile_assigement/views/Profile.dart';
import 'package:flutter/material.dart';

import '../views/app.dart';

class IndexApp extends StatefulWidget {
  const IndexApp({Key? key}) : super(key: key);

  @override
  State<IndexApp> createState() => _IndexAppState();
}

class _IndexAppState extends State<IndexApp> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          App(),
          Payment(),
          Location(),
          Profile(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Theme.of(context).colorScheme.primary,
      //   onPressed: () {  },
      //   child: Icon(Icons.qr_code_2,size: 40,color: Colors.white,),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 3,
        shape: const CircularNotchedRectangle(),
        elevation: 10,
        color: Theme.of(context).colorScheme.secondary,
        surfaceTintColor: Colors.orange,
        shadowColor:Colors.orange,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,

          onTap: (index){
            setState(()=>{
              selectedIndex = index
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                activeIcon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on_outlined),
                label: "Payment",
                activeIcon: Icon(Icons.monetization_on_rounded)
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: "Location",
                activeIcon: Icon(Icons.location_on)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                label: "Profile",
                activeIcon: Icon(Icons.person)
            ),
          ],
        ),
      ),

    );
  }
}