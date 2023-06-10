
import 'package:aba_mobile_assigement/models/DrawerData.dart';
import 'package:flutter/material.dart';

class IconTitleTemplate extends StatelessWidget {
  const IconTitleTemplate({Key? key, required this.data}) : super(key: key);
  final DrawerDataFormat data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        //isThreeLine:true,
      //selectedTileColor:Colors.red,
      selectedColor:Colors.red,
      splashColor:Theme.of(context).colorScheme.primary,
      onTap: (){},
      dense: true,
      leading: Builder(builder:(context)=>IconButton(onPressed: ()=>{}, icon:Icon(data.icon,color: Colors.white,size: 25,), ) ),
      title: Text(data.title,style: const TextStyle(color: Colors.white,fontSize: 15),),
      trailing: Builder(builder: (context)=>IconButton(onPressed: ()=>{}, icon: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.white,),),)
    );
  }
}
