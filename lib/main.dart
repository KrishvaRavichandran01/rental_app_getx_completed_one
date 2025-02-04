import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Herat_controll.dart';
import 'count.dart';
import 'package:get/get.dart';
import 'secondpage.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterController controller2 = Get.put(CounterController(), tag: 'controller2');
  final Heartcolor controllerheart2 = Get.put(Heartcolor(),tag: ' controllerheart2');



  SizedBox Spacebetweencontainer(){
    return SizedBox(width: 30,);
  }


  Container popular_locations_picture_link_name( var op,String name,double lefts,double tops){
    return Container(padding: EdgeInsets.only(left:lefts,top: tops),decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image: op, )),
      height: 200,width: 160,child: Text(name,style: TextStyle(letterSpacing: 2,color: Colors.white,fontSize: 25,fontWeight: FontWeight.w900),),
    );
  }

  Container Most_Viewed_container(var container_Network_image_link,amount_of_room,String details_carinthia){
    /// op is link ,doll money ,

    return Container(

      height: 400,width: 400,color: Colors.white,/// const
      child: Column( /// const
        children: [//////container image  start
          Container(padding: EdgeInsets.only(left:280,top:16,bottom: 155,right: 9),decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image: NetworkImage(container_Network_image_link), )),
            height: 220,width: 350,
            child:CircleAvatar(backgroundColor: Colors.white,radius: 100,
              child: Obx(()=> IconButton(onPressed: (){
                controllerheart2.heart();

            }, icon: Icon(CupertinoIcons.heart_fill,color: controllerheart2.isHeartRed.value?Colors.red:Colors.grey,))),),
          )/// image is end
          ,SizedBox(height: 15,) // height between container and image
          ,Row(
            children: [SizedBox(width: 39,),Icon(CupertinoIcons.money_dollar,size: 35,weight:900,),
              Text(amount_of_room,style: TextStyle(fontSize: 31,fontWeight: FontWeight.w700),),// doll is money
              Text("/Night",style: TextStyle(fontSize: 20),) ,
              Icon(Icons.electric_bolt_rounded,
                color: Colors.orangeAccent,size: 20,),
              SizedBox(width: 100,),IconButton(onPressed: controller2.increment, icon: Icon(CupertinoIcons.star_fill,size: 20,color: Colors.redAccent,),)
              ,Obx(()=>Text("${controller2.count.value}",style: TextStyle(fontSize: 20),))],
          ),
          Row(children: [ SizedBox(width: 46,),
            Text(details_carinthia,style: TextStyle(fontSize:20,fontWeight: FontWeight.w400 ),)
          ],),
          Row(children: [ SizedBox(width: 46,),
            Text("Private room/4 beds",style: TextStyle(fontSize:15,fontWeight: FontWeight.w200 ),)
          ],)

        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
    theme: ThemeData(
      primaryColor:Colors.white,scaffoldBackgroundColor: Colors.white,
    ),
    home: Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [ // app bar
          Container(color: Color(0XFFEDE7F6),height: 230,width: 500,child: Column(
            children: [ // title
              Container(padding: EdgeInsets.only(left: 25,top: 25),
                  child: Text("Explore the world!By Travelling",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,letterSpacing: 1.5)
                  )
              ),
              //  search bar
              SizedBox(height: 30,),
              Row(children: [SizedBox(width: 40,),
                Container(height: 48,width: 270,decoration:BoxDecoration(color: Color(0XFFFFFFFF),borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(children: [SizedBox(width: 15,),Icon(Icons.search),Container(child: TextField( decoration: InputDecoration(hintText: 'place',labelText: "where did you do?",),),width: 210,),SizedBox(width: 15,)],),),SizedBox(width: 30,),FloatingActionButton(backgroundColor: Colors.white,onPressed: (){},child: Icon(MaterialCommunityIcons.tune_variant),),
              ],)



            ],
          ),
          ),
          Container(child: Text('Popular locations',style: TextStyle(fontSize:27,fontWeight: FontWeight.w700,letterSpacing: 1.5),),margin: EdgeInsets.only(top: 40,left: 30),)
          ,SizedBox(height: 10,),
          /// Word famous place
          Container( height: 200,
            child: ListView(scrollDirection: Axis.horizontal,children: [
              Spacebetweencontainer(),
              popular_locations_picture_link_name( NetworkImage('https://i.pinimg.com/236x/fa/63/2a/fa632ab3841f39e80ef80829ef3f9b4e.jpg'),"India",45,155),
              Spacebetweencontainer(),
              popular_locations_picture_link_name( NetworkImage('https://static.independent.co.uk/2024/08/30/14/newFile-1.jpg'),"Paris",45,155),
              Spacebetweencontainer(),
              popular_locations_picture_link_name( NetworkImage('https://vj-prod-website-cms.s3.ap-southeast-1.amazonaws.com/g1-1716175937240.jpg'),"China",45,155),Spacebetweencontainer()
              ,popular_locations_picture_link_name( NetworkImage('https://media.cnn.com/api/v1/images/stellar/prod/190508160346-most-beautiful-places-in-austria-hallstatt.jpg?q=w_1600,h_900,x_0,y_0,c_fill'),"Austria",45,155),
            ]),
          ),

          Container(child: Text('Recommended',
            style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700,letterSpacing: 1.5),)
            ,margin: EdgeInsets.only(top: 50,left: 30),)
          ,SizedBox(height: 10,),
          recommended_page_scroller(),
          Container(margin: EdgeInsets.only(top: 10,right: 30,left: 30,bottom: 40),
              height: 300,width: 300,decoration: BoxDecoration( borderRadius: BorderRadius.all(Radius.circular(30)),image:DecorationImage(fit:BoxFit.fill,image:NetworkImage('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQORVnRhVl25qlK33g8OruTrn-RuSYi4t1fcmEu7rrsQd2DvPp3'), ))
          ),
          Container(child: Text('Most Viewed',
            style: TextStyle(fontSize: 27,fontWeight: FontWeight.w700,letterSpacing: 1.5),)
            ,margin: EdgeInsets.only(top: 50,left: 30),),
          SizedBox(height: 20,),
          Most_Viewed_container('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFInlsN3-Z3YOcdNI5dn7mfYudEWXFCk-JpQ&s', '240', 'Carinthia Lake see Breakfast..,')
          ,
          Most_Viewed_container("https://media-cdn.tripadvisor.com/media/photo-s/2b/6c/a8/cc/das-hotel-liegt-direkt.jpg", "400","Carinthia Lake see Breakfast..," ),

          Most_Viewed_container("https://media-cdn.tripadvisor.com/media/photo-s/2b/6c/a8/cc/das-hotel-liegt-direkt.jpg", "300","Carinthia Lake see Breakfast..," ),
          Most_Viewed_container("https://cf.bstatic.com/xdata/images/hotel/max1024x768/201924259.jpg?k=53be41f0491903418cd55fbb030825736e29dae7a6c74bdec6bb3abbc2907c47&o=&hp=1", "250","Carinthia Lake see Breakfast..," ),



        ],
      )
      ,
    ),
    );
  }
}

