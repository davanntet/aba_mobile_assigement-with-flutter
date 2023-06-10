import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificationAnnouncementCard extends StatefulWidget {
  const NotificationAnnouncementCard({Key? key}) : super(key: key);

  @override
  State<NotificationAnnouncementCard> createState() => _NotificationAnnouncementCardState();
}

class _NotificationAnnouncementCardState extends State<NotificationAnnouncementCard> {
  bool isMore = false;
  @override
  Widget build(BuildContext context) {
    return Container(

        width: MediaQuery.of(context).size.width-15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: const EdgeInsets.only(top: 7.5),
        child: Column(
          children: [
            Container(

              height: isMore?175:125,
              decoration: BoxDecoration(

                  boxShadow: [
                    BoxShadow(spreadRadius: -1,color: Colors.grey,blurRadius: 0,offset: Offset.fromDirection(0))
                    //BoxShadow(spreadRadius: -2,color: Colors.grey,blurRadius: 5,offset: Offset.fromDirection(0)),
                  ],
                  color: Colors.lightBlueAccent,
                  borderRadius: const BorderRadius.vertical(top:Radius.circular(10))
              ),
              child:Stack(
                children: [
                  Container(
                    height: isMore?175:125,
                    width: MediaQuery.of(context).size.width-15,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset('lib/asset/image/csm_aba_junior_acc_slider.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.cover),
                    )
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ABA give your child a head start!",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                        Text("May 19, 2023 14:22:28",style: TextStyle(color: Colors.white,fontSize: 14),)
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0),
                            Colors.white.withOpacity(0),
                            Colors.white.withOpacity(0),
                            Colors.black.withOpacity(0.5)
                          ]
                        )
                    ),
                  )
                ],
              ),
            ),
            Container(

              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: Text("Did you khnow you can help your child learn financial responsibility early with ABA Junior Account? If your child is above 10 yours of age, open ABA Junior Account for them so they can have their own ABA Modbile to pay everywhere with KHQR, make local transfers, and even save money.",style: TextStyle(fontSize: 13,color: Color(0xFF717171)),overflow: TextOverflow.ellipsis,softWrap: true,maxLines: isMore?10:2,)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    
                    onPressed: () {  },
                    style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),elevation: MaterialStateProperty.resolveWith((states) => 0)),

                    child:const Text("LEARN MORE",style: TextStyle(fontSize: 16,color: Color(0xFF0F6282),fontWeight: FontWeight.w500),),

                  ),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          isMore = !isMore;
                        });
                      },
                      icon: isMore?const Icon(Icons.expand_less):const Icon(Icons.expand_more)
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}
