
import 'package:aba_mobile_assigement/views/PIN.dart';
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key,required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Theme.of(context).colorScheme.secondary)),
          onPressed: () {

            showDialog(
                context: context,
                builder:(_)=> PIN()
                );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Icon(icon,size: 35,color: Theme.of(context).colorScheme.surface,),
              const SizedBox(height: 5,),
              Text(title,style: TextStyle(fontSize: 15,color: Theme.of(context).colorScheme.surface,fontWeight: FontWeight.w500),)
            ],
          ),
        )
    );
  }
}
