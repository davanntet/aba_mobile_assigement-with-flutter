import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/MenuData.dart';
import '../../utils/ColorAsset.dart';
import 'MenuCard.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key, required this.remineSpace}) : super(key: key);
  final double remineSpace;
  @override
  Widget build(BuildContext context) {
    //double reminespace=(MediaQuery.of(context).size.height-kToolbarHeight-MediaQuery.of(context).padding.top)/5;
    return Flexible(
      flex: 3,
      child: Container(

        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            gradient: const RadialGradient(
                radius: 0.5,
                colors: [
                  Colors.white,
                 ColorAsset.primaryColor
                ]
            )

        ),
        child: GridView(

          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              mainAxisExtent: remineSpace-1
          ),
          children: [
            ...List.generate(9, (index) => MenuCard(
                title: MenuData.MenuListData[index].title,
                icon: MenuData.MenuListData[index].icon
            ))
          ],
        ),
      ),
    );
  }
}
