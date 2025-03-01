import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'count.dart';
import 'Herat_controll.dart';
import 'package:get/get.dart';



class recommended_page_scroller extends StatefulWidget {
  const recommended_page_scroller({super.key});

  @override
  State<recommended_page_scroller> createState() => _recommended_page_scrollerState();
}

class _recommended_page_scrollerState extends State<recommended_page_scroller> {
  final CounterController controller1 = Get.put(CounterController(),tag: 'controller1');
  final Heartcolor controllerheart1 = Get.put(Heartcolor(),tag: 'controllerheart1');
  bool isHeartRed=false;

  SizedBox Space_between_container(){
    return SizedBox(width: 30,);
  }
  Container pic(  op,){
    return Container(padding: EdgeInsets.only(left:245,top:16,bottom: 115,right: 9),decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(op), )),
      height: 170,width: 300,child:CircleAvatar(backgroundColor: Colors.white,radius: 100,child: Obx(()=>IconButton(onPressed: (){
       controllerheart1.heart();
      }, icon: Icon(CupertinoIcons.heart_fill,color: controllerheart1.isHeartRed.value?Colors.red:Colors.grey,))),),
    );
  }///// above all input of program
  ///////// photo of recommended
  Container recommended_scrolling_container(var ops,doll,String detail_of_carinthia_){ /// op is link ,doll money ,
    return Container(
      height: 500,width: 300,color: Colors.white,/// const
      child: Column( /// const
        children: [//////container image  start
          Container(padding: EdgeInsets.only(left:245,top:16,bottom: 115,right: 9),decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(ops), )),
            height: 170,width: 300,child:CircleAvatar(backgroundColor: Colors.white,radius: 100,child: Obx(()=>IconButton(onPressed: (){

                controllerheart1.heart();// heart red colour

            }, icon: Icon(CupertinoIcons.heart_fill,color: controllerheart1.isHeartRed.value?Colors.red:Colors.grey,))),),
          )/// image is end
          ,SizedBox(height: 15,) // height between container and image
          ,Row(
            children: [Icon(CupertinoIcons.money_dollar,size: 29,weight:900,),
              Text(doll,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),// doll is money
              Text("/Night",style: TextStyle(fontSize: 15),) ,
              Icon(Icons.electric_bolt_rounded,
                color: Colors.orangeAccent,size: 15,),
              SizedBox(width: 100,),IconButton(onPressed: controller1.increment, icon: Icon(CupertinoIcons.star_fill,size: 15,color: Colors.orangeAccent,)),
              Obx(()=> Text("${controller1.count}",style: TextStyle(fontSize: 16),))],
          ),
          Row(children: [ SizedBox(width: 12,),
            Text(detail_of_carinthia_,style: TextStyle(fontSize:20,fontWeight: FontWeight.w500 ),),

          ],),
          Row(children: [ SizedBox(width: 12,),
            Text("Private room/5 beds",style: TextStyle(fontSize:15,fontWeight: FontWeight.w200 ),)
          ],)

        ],
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(height: 350,
      child: ListView( scrollDirection: Axis.horizontal,
        children: [Space_between_container(),
          recommended_scrolling_container('https://a0.muscache.com/im/pictures/b5f91d25-c754-41fd-b31e-643f3179dbc1.jpg?im_w=480',"230", 'Carinthia Lakes BreakFast...'),
          Space_between_container(), recommended_scrolling_container('https://cf.bstatic.com/xdata/images/hotel/max1024x768/48074514.jpg?k=44a9a90f19f4dac33e2829693b7987d7d0e9dc1e9723681311d924b368dd9e14&o=&hp=1', "400", "Carinthia Lake see..")
          ,Space_between_container(),
          recommended_scrolling_container('https://cf.bstatic.com/xdata/images/hotel/max1024x768/47579592.jpg?k=f0c3191d01c2d491414e32b24b413327de4bb6758db1fc47a397bc5310984056&o=&hp=1', "300", "Carinthia Lakes see ..")


        ],
      ),
    );
  }
}
