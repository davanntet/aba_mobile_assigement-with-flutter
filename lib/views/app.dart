import 'package:aba_mobile_assigement/components/app/AppDrawer.dart';
import 'package:aba_mobile_assigement/components/app/MenuList.dart';
import 'package:aba_mobile_assigement/components/app/QuickCard.dart';
import 'package:aba_mobile_assigement/utils/ColorAsset.dart';
import 'package:flutter/material.dart';

import '../components/app/AppAppBar.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double remineSpace = (MediaQuery.of(context).size.height -
            kToolbarHeight -
            kBottomNavigationBarHeight -
            MediaQuery.of(context).padding.bottom -
            MediaQuery.of(context).padding.top) /
        5;
    // print("Remine Space = ${remineSpace/5}");
    return Stack(
      children: [
        Scaffold(
          drawer: AppDrawer(),
          appBar: AppAppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MenuList(
                remineSpace: remineSpace,
              ),
              QuickCard(
                title: "Quick Transfer",
                description:
                    "Create your template here to make transfer quicker",
                color: ColorAsset.cyanColor,
                remineSpace: remineSpace,
                backgroundIcon: Icons.swap_horizontal_circle_sharp,
              ),
              QuickCard(
                title: "Quick Payment",
                description: "Paying your bills with templates is faster",
                color: ColorAsset.redColor,
                remineSpace: remineSpace,
                backgroundIcon: Icons.monetization_on_rounded,
              )
            ],
          ),
        ),
      ],
    );
  }
}
