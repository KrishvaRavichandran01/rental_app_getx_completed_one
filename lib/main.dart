import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Herat_controll.dart';
import 'count.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {


    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Heartcolor controllerheart2 = Get.put(Heartcolor(),tag: ' controllerheart2');
    final CounterController controller2 = Get.put(CounterController(), tag: 'controller2');


    Widget Container_popular (name,image_from_net){
      return Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(decoration: BoxDecoration( image:DecorationImage(fit:BoxFit.fill,image:image_from_net),borderRadius:BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.only(top: height/7,left: width/10),
            width: width/3.2,
            child: Text(name,style: TextStyle(letterSpacing: 2,color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)),
      );
    }
    Widget Container_recom(amount,container_Network_image_link){
      return Container(
        color: Colors.white,height: height/3.64,width: width/1.5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(decoration: BoxDecoration( image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(container_Network_image_link)),color: Colors.black54,borderRadius:BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.only(top: height/65,left: width/2.2,bottom: height/7),
                width: width/1,height: height/5,
                child: CircleAvatar(backgroundColor: Colors.white,radius: 15,
                  child: Obx(()=> IconButton(onPressed: (){
                    controllerheart2.heart();

                  }, icon: Icon(CupertinoIcons.heart_fill,color: controllerheart2.isHeartRed.value?Colors.red:Colors.grey,size: 20,))),),),
            ),

            Row(children: [ SizedBox(width:width/27 ,),
              IconTheme(data:IconThemeData(weight:400,size: 25) , child: Icon(CupertinoIcons.money_dollar)),
              Text(amount,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800 ),),Text(" / Night",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500 ),) ,
              Icon(Icons.electric_bolt_rounded,
                color: Colors.orangeAccent,size: 10,),
              SizedBox(width:width/6,),
              IconButton(onPressed: controller2.increment,constraints: BoxConstraints(minHeight: 20,minWidth: 15), icon: Icon(CupertinoIcons.star_fill,color: Colors.deepOrangeAccent,size: 14,)),
              Obx((){return Text('${controller2.count.value}',style: TextStyle(fontSize:15,fontWeight: FontWeight.w400 ),);})

            ],),

            Row(children: [ SizedBox(width:width/20,),
              Text("Carinthia Lake see Breakfast..,",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500 ),)
            ],),
            Row(children: [ SizedBox(width:width/20,),
              Text("Private room/4 beds",style: TextStyle(fontSize:10,fontWeight: FontWeight.w200 ),)
            ],)


          ],
        ),
      );
    }
    Widget Container_most(amount_room,container_Network_image_link,){
      return  Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          height: height/2.7,width: width/1, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
          child: Column(
            children: [
              Container(decoration: BoxDecoration( image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(container_Network_image_link)),borderRadius:BorderRadius.all(Radius.circular(20))),padding: EdgeInsets.only(top: height/60,left: width/1.44,bottom: height/6.5,right: width/15),
                width: width/1,height: height/4,
                child: CircleAvatar(backgroundColor: Colors.white,radius: 5,
                  child: Obx(()=> IconButton(onPressed: (){
                    controllerheart2.heart();

                  }, icon: Icon(CupertinoIcons.heart_fill,color: controllerheart2.isHeartRed.value?Colors.red:Colors.grey,size: 30,))),),),

              Row(children: [ SizedBox(width:width/27 ,),
                IconTheme(data:IconThemeData(weight:400,size: 30) , child: Icon(CupertinoIcons.money_dollar)),
                Text(amount_room,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800 ),),Text(" / Night",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),) ,
                Icon(Icons.electric_bolt_rounded,
                  color: Colors.orangeAccent,size: 15,),
                SizedBox(width:width/3,),
                IconButton(onPressed: controller2.increment,constraints: BoxConstraints(minHeight: 20,minWidth: 15), icon: Icon(CupertinoIcons.star_fill,color: Colors.deepOrangeAccent,size: 15,)),
                Obx((){return Text('${controller2.count.value}',style: TextStyle(fontSize:16,fontWeight: FontWeight.w400 ));})

              ],),

              Row(children: [ SizedBox(width:width/20,),
                Text("Carinthia Lake see Breakfast..,",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500 ),)
              ],),
              Row(children: [ SizedBox(width:width/20,),
                Text("Private room/4 beds",style: TextStyle(fontSize:10,fontWeight: FontWeight.w200 ),)
              ],),




            ],
          ),
        ),
      );
    }
    Widget Sized(){
      return   SizedBox(height: height/30,);
    }

    return GetMaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white
      ),
      home: Scaffold(

          body: ListView(
            scrollDirection: Axis.vertical,
            children:[
              Container(width: width,color: Color(0XFFEDE7F6),height: height/4.7,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(color:Color(0XFFEDE7F6),height: height/8,width: width/1,padding: EdgeInsets.only(left: 25,top: height/50,),
                            child: Text("Explore the world!By Travelling",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,letterSpacing: 1.5))),

                      ],),
                    Row(children: [
                      Container(margin: EdgeInsets.only(left: width/15,right: width/40),
                        width: width/1.4,height: height/15,
                        decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.search),
                            Container(child: TextField( decoration: InputDecoration(hintText: 'place',
                              labelText: "where did you do?",),),width: width/1.8),],),
                      ),
                      FloatingActionButton(backgroundColor: Colors.white,onPressed: (){},child: Icon(Icons.tune),),

                    ],)


                  ],
                ),),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  height: height/0.1,
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(color: Colors.white,margin: EdgeInsets.only(top: height/18,left: width/55), width: width,height:height/16.4,
                        child: Text('Popular locations',
                          style: TextStyle(fontSize:25,fontWeight: FontWeight.w700,letterSpacing: 1.5),),
                      ),
                      Container(color: Colors.white, height: height/4.6
                        ,width: width,
                        child: ListView(scrollDirection: Axis.horizontal,children: [
                          Container_popular ("India",NetworkImage('https://i.pinimg.com/236x/fa/63/2a/fa632ab3841f39e80ef80829ef3f9b4e.jpg')),
                          Container_popular ("Paris", NetworkImage('https://static.independent.co.uk/2024/08/30/14/newFile-1.jpg')),

                          Container_popular ("China",NetworkImage('https://vj-prod-website-cms.s3.ap-southeast-1.amazonaws.com/g1-1716175937240.jpg')),
                          Container_popular ("Austria",NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/190508160346-most-beautiful-places-in-austria-hallstatt.jpg?q=w_1600,h_900,x_0,y_0,c_fill')),


                        ]),
                      ),
                      SizedBox(height: height/45,),
                      Container(color: Colors.white,margin: EdgeInsets.only(top: height/24,left: width/55), width: width,height:height/19,
                        child: Text('Recommended',
                          style: TextStyle(fontSize:23,fontWeight: FontWeight.w700,letterSpacing: 1.5),),
                      ),

                      Container( height: height/3.2,color: Colors.white,
                          child: ListView(scrollDirection: Axis.horizontal,children: [
                            Container_recom("90",'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFInlsN3-Z3YOcdNI5dn7mfYudEWXFCk-JpQ&s'),

                            Container_recom("360",'https://ik.imagekit.io/boutiquehomes/storage/images/vacation-rentals/australia-and-oceania/australia/bushy-summers/vacation_home_rental_tasmania_015.jpg?tr=w-3840,ar-1.3-1'),

                            Container_recom("250",'https://cdn.vox-cdn.com/thumbor/HRvuWjz_b64Aq4Q1J5RLJGM4vYU=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/16344350/0b0cd00c_891f_49a5_a75c_cdd640a23020.f10.jpg')

                          ],)

                      ),

                      SizedBox(height: height/15,),

                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(height: height/2.5,width: width/1,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red,image:DecorationImage(fit:BoxFit.fill,image:NetworkImage('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQORVnRhVl25qlK33g8OruTrn-RuSYi4t1fcmEu7rrsQd2DvPp3'), ),
                          ),
                        ),),
                      SizedBox(height: height/30,),

                      Container(color: Colors.white,margin: EdgeInsets.only(top: height/18,left: width/55), width: width,height:height/16.4,
                        child: Text('Most viewed',
                          style: TextStyle(fontSize:25,fontWeight: FontWeight.w700,letterSpacing: 1.5),),
                      ),
                      Sized(),
                      Container_most("90",'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFInlsN3-Z3YOcdNI5dn7mfYudEWXFCk-JpQ&s'),
                      Sized(),
                      Container_most("325", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYfkHCh9Ww8elDpYwUncpGX9vC7pRETHjCSw&s")
                      ,Sized(),

                      Container_most("360", "https://a0.muscache.com/im/pictures/d8105fd3-3e91-4b45-abd5-499fe3fc8220.jpg?im_w=720&im_format=avif")



                    ],
                  ),),
              ),






              //// advertisment poster








            ],
          )
      ),
    );
  }
}

