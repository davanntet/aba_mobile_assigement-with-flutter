import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PIN extends StatefulWidget {
  const PIN({Key? key}) : super(key: key);

  @override
  State<PIN> createState() => _PINState();
}

class _PINState extends State<PIN> {
  int numPIN=0;
  @override
  Widget build(BuildContext context) {
    if(numPIN>=4){
      Navigator.of(context).pop();
      numPIN=4;
    }
    return Scaffold(
        backgroundColor:
            Theme.of(context).colorScheme.primary.withOpacity(0.95),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Builder(
                builder: (context) => InkWell(
                      onTap: () => {Navigator.of(context).pop()},
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                    )),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(1000)),
                child: Icon(
                  Icons.security_outlined,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                "Enter PIN to login",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 15,
                  child: CircleAvatar(
                    backgroundColor: numPIN>0?Colors.cyan:Colors.white,
                    minRadius: 10,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 15,
                  child: CircleAvatar(
                    backgroundColor: numPIN>1?Colors.cyan:Colors.white,
                    minRadius: 10,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 15,
                  child: CircleAvatar(
                    backgroundColor: numPIN>2?Colors.cyan:Colors.white,
                    minRadius: 10,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  minRadius: 15,
                  child: CircleAvatar(
                    backgroundColor: numPIN>3?Colors.cyan:Colors.white,
                    minRadius: 10,
                  ),
                )
              ],
            ),

            GridView(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 110
                ),
              children: [
                  ...List.generate(9, (index) => IconButton(
                  onPressed: (){
                    setState(() {
                        numPIN=numPIN+1;
                    });
                  },
                    icon:Text("${index+1}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)
                    )
                  ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.fingerprint,size: 40,color: Colors.white,)
                ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        numPIN=numPIN+1;
                      });
                    },
                    icon: Text("0",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),)
                ),
                IconButton(
                    onPressed: (){
                      setState(() {
                        numPIN=numPIN-1;
                      });
                    },
                    icon: Icon(Icons.backspace,size: 40,color: Colors.white,)
                )

              ],
            )
          ],
        ));
  }
}
