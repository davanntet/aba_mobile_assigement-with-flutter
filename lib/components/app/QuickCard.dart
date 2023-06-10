import 'package:flutter/material.dart';


class QuickCard extends StatelessWidget {
  const QuickCard({Key? key, required this.title, required this.description, required this.color,required this.remineSpace, required this.backgroundIcon}) : super(key: key);
  final String title;
  final String description;
  final Color color;
  final double remineSpace;
  final IconData backgroundIcon;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Stack(
        children: [
          Container(
            //decoration: BoxDecoration(color: Colors.transparent),
            width: MediaQuery.of(context).size.width,
            color: color,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                const SizedBox(height: 7,),
                Text(description,style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width-100,top: remineSpace-100),
            child: Icon(backgroundIcon,color: const Color.fromRGBO(255, 255, 255, 0.50),size: 135,),
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white.withOpacity(0)),
                shadowColor:MaterialStateColor.resolveWith((states) => Colors.white.withOpacity(0)),
              ),
              onPressed: (){},
              child:Container(
                color: Colors.red.withOpacity(0),
              )
          )


        ],
      )
    );
  }
}
