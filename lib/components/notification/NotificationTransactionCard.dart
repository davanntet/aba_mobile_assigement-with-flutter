import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationTransactionCard extends StatelessWidget {
  const NotificationTransactionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      margin: const EdgeInsets.only(top: 7.5),
      width: MediaQuery.of(context).size.width-15,
        decoration: BoxDecoration(
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(spreadRadius: -2,color: Colors.grey,blurRadius: 5,offset: Offset.fromDirection(0)),
          ]
        ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(1000)
                ),
                child: const Icon(Icons.account_balance_outlined,color: Colors.white,size: 25,),
              ),
              SizedBox(width: 10,),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Smart",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
                  Text("May 15 2023 | 10:20:18",style: TextStyle(fontSize: 12,color: Colors.grey),)
                ],
              )
            ],
          ),
          const SizedBox(height: 15,),
          const Text("1.00 USD is paid for 096 xxx xxx from account 033 xxx xxx",textAlign: TextAlign.start,style: TextStyle(color: Color(0xFF6B6B6B),fontSize: 13,),)
        ],
      ),
    );
  }
}
