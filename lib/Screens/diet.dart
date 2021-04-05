import 'package:workoutapp/main.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3A3B74),
      body: SafeArea(
        child: Container(
          height:Get.height ,
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 30.0,),
                  child:
                   Text("Diet",style: TextStyle(color: Colors.white,fontSize: 29),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                      height: 240,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 200,
                                width: Get.width,
                                 decoration: BoxDecoration(
                                   color: Color(0xFF40408A),
                        borderRadius: BorderRadius.circular(20)
                      ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: 
                                    Text("loveasdasdasdas",style: TextStyle(color:Color(0xFF4F7AB9),fontSize: 18),),
                                  ),
                                    Center(child: Text("loveasdasdasdas",style: TextStyle(color:Colors.white,fontSize: 18),)),
                                     Center(child: Text("lovs",style: TextStyle(color:Colors.pink,fontSize: 18),)),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 70),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Text("Protient",style: TextStyle(color:Colors.white,)),
                                          Text("Protient",style: TextStyle(color:Color(0xFF4F7AB9),))
                                       ],
                                       ),
                                     ),
                                        Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 70),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Text("Protient",style: TextStyle(color:Colors.white,)),
                                          Text("Protient",style: TextStyle(color:Color(0xFF4F7AB9),))
                                       ],
                                       ),
                                     ),
                                        Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 70),
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                       children: [
                                         Text("Protient",style: TextStyle(color:Colors.white,)),
                                          Text("Protient",style: TextStyle(color:Color(0xFF4F7AB9),))
                                       ],
                                       ),
                                     )

                                  ],
                                ),),
                            )),
                                  Positioned(
                            top: 2,
                            left: 325,
                            right: 0,
                            child: Container(
                              height: 40,
                              width:70,
                               decoration: BoxDecoration(
                                 color: Color(0xFF42C3EA),
                        borderRadius: BorderRadius.circular(30)
                      ),
                              child:IconButton(icon: Icon(Icons.crop_sharp), onPressed: (){

                              }))),

                        ],
                      ),
                    ),
                  ),
                ),

               Padding(
                 padding: const EdgeInsets.only(left:20.0),
                 child: Text("Meat Plans for today",style: TextStyle(color: Colors.white,fontSize: 29),),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:  [
                    Container(
                      height: 130,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF40408A)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 18),),

                              Container(
                                height: 28,
                                width: 28,
                                
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Icon(Icons.plus_one,color: Colors.white,),
                              ),
                                

                             
                            ],),
                          ),
                             Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),
                                       Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),

                        ],
                      ),

                    ),

  Container(
                      height: 130,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF40408A)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 18),),

                              Container(
                                height: 28,
                                width: 28,
                                
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Icon(Icons.plus_one,color: Colors.white,),
                              ),
                                

                             
                            ],),
                          ),
                             Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),
                                       Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),

                        ],
                      ),

                    ),

                 ],),
               ),
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children:  [
                    Container(
                      height: 130,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF40408A)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 18),),

                              Container(
                                height: 28,
                                width: 28,
                                
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Icon(Icons.plus_one,color: Colors.white,),
                              ),
                                

                             
                            ],),
                          ),
                             Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),
                                       Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),

                        ],
                      ),

                    ),

  Container(
                      height: 130,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient:LinearGradient(
                             colors: [Color(0xFFAF48EA),
                             Color(0xFF5C4AE6)
                             ],
                             begin: Alignment.topLeft,end:Alignment.bottomRight)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 18),),

                              Container(
                                height: 28,
                                width: 28,
                                
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(10),
                                  
                                ),
                                child: Icon(Icons.plus_one,color: Colors.white,),
                              ),
                                

                             
                            ],),
                          ),
                             Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),
                                       Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
                            child: Row(
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                              children: [
                              Text("BreakFzst",style: TextStyle(color:Colors.white,fontSize: 12),),
                               Text("BreakFzst",style: TextStyle(color:Colors.pink,fontSize: 12),),

                                

                             
                            ],),
                          ),
              
                        ],
                      ),

                    ),

                 ],),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Recepies",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                     Text("See all",style: TextStyle(fontSize: 15,color: Colors.grey),),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(top:8.0),
                 child: Container(
                   height: 400,
                   width: Get.width,
                   child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                     itemCount: 4,
                     itemBuilder: (context,i){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage("asset/girl.jpg"),fit: BoxFit.cover)
                                ),
                              ),
                             
                            ),
                             Padding(
                               padding: const EdgeInsets.only(left:14.0),
                               child: Column(
                                 children: [
                                   Text("hello",style: TextStyle(color: Colors.white,fontSize: 20)),
                                 Text("321",style: TextStyle(color: Colors.white,fontSize: 20))
                                 ],
                               ),
                             ),
                        
                              
                          ],
                        );
                     })),
               ),
                Container(
                         height: 50,
                         width: Get.width,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(22),
                           gradient:LinearGradient(
                             colors: [Color(0xFFAF48EA),
                             Color(0xFF5C4AE6)
                             ],
                             begin: Alignment.topLeft,end:Alignment.bottomRight)
                         ),
                         child: Center(child: Text("Add Recipie",style: TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),)),
                       ),
                     
        ],),
          ),),
      ),
      
    );
  }
}