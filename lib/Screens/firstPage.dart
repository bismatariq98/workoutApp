import 'dart:ui';

import 'package:workoutapp/Screens/audioScreen.dart';
import 'package:workoutapp/Widget/slider.dart';
import 'package:workoutapp/const/textstyle.dart';
import 'package:workoutapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
    double _volumeValue = 50;
void onVolumeChanged(double value) {
 setState(() {
    _volumeValue = value;
 }); 
}
  @override
  Widget build(BuildContext context) {
    return 
       SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0),
                child: Container(
          height:Get.height,
          width: Get.width,
          color: Color(0xFF393871),
           child: SingleChildScrollView(
                        child: Column(
                          children: [
               Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Column(
                     children: [
                       Text("Date will shown",style:smallTextStyle ,),
                       Text("Main Heading",style: headingStyle,)
                     ],
                   ),
                   Container(
                     height: 50,
                     width: 50,
                     
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),
                     image:DecorationImage(image: AssetImage("asset/girl.jpg",),fit: BoxFit.cover)
                   ),)
               ],),

               Container(
                 height: 120,
                 width: Get.width,
                 child: ListView.builder(
                   itemCount: 8,
                   scrollDirection: Axis.horizontal,
                   itemBuilder:(context,i){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 100,
                         width: 80,
                         decoration: BoxDecoration(
                           borderRadius:BorderRadius.circular(12),
                           color:Color(0xFF403F89),
                         ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                             Text("wed",style: TextStyle(color: Colors.white),),
                             Text("04",style: TextStyle(color:Colors.white),)
                          ]),
                       ),
                     );
                   } ),
               ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Text("Plan for today",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:23),),
                 Container(height: 40,width: 170,decoration: BoxDecoration(
                   color: Color(0xFFF435CD),
                   borderRadius: BorderRadius.circular(20)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     IconButton(icon: Icon(Icons.add,color: Colors.white,), onPressed: (){}),
                     Text("Recipies",style: TextStyle(color:Colors.white,))
                   ],),
                   )
               ],),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal:12.0),
                 child: Container(height: 280,width: Get.width,
                 decoration: BoxDecoration(color: Color(0XFF40408A),
                 borderRadius: BorderRadius.circular(20)
                 
                 
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:15.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                                             Container(
                                               height: 200,
                                               width: 150,
                                              
                                               child:
                                                SfRadialGauge(
 axes: <RadialAxis>[
   RadialAxis(minimum: 0,
       maximum: 100,
       startAngle: 170,
       endAngle: 370,
       showLabels: false, 
       showTicks: false, 
       radiusFactor: 0.9, 
       axisLineStyle: AxisLineStyle(
          cornerStyle: CornerStyle.bothFlat,
          color: Colors.black12,
          thickness: 9),
       pointers: <GaugePointer>[
         RangePointer( 
              value: _volumeValue,
              cornerStyle: CornerStyle.bothFlat,
              width: 12,
              sizeUnit: GaugeSizeUnit.logicalPixel,
              color: Colors.orangeAccent,
              gradient: const SweepGradient(
                colors: <Color>[
                            Color(0XFF48C1E9), 
                            Color(0XFF48C1E9) 
                           ],
                           stops: <double>[0.25, 0.75] 
              )),
         MarkerPointer(
             value: _volumeValue,
             enableDragging: true,
             onValueChanged: onVolumeChanged,
             markerHeight: 20,
             markerWidth: 20,
             markerType: MarkerType.image,
        
             color: Color(0XFFFFAB40),
             borderWidth: 2,
             borderColor: Colors.white54) 
         ],
        annotations: <GaugeAnnotation>[
             GaugeAnnotation(
                           angle: 90,
                           axisValue: 5,
                           positionFactor: 0.1,
                           widget: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               
                               Text(_volumeValue.ceil()
                                        .toString() + '%',
                                        style: TextStyle(
                                               fontSize: 30,
                                               fontWeight: FontWeight .bold,
                                               color: Color(0XFF48C1E9))),
                                               Text("Consumed",style: TextStyle(color: Colors.white,fontSize: 20),)
                             ],
                           ) 
          )
       ] 
    )
  ] 
),
                                             ),

                           Container(
                             height: 200,
                             width: 150,
                            
                             child: SfRadialGauge(
 axes: <RadialAxis>[
   RadialAxis(minimum: 0,
       maximum: 100,
       startAngle: 170,
       endAngle: 370,
       showLabels: false, 
       showTicks: false, 
       radiusFactor: 0.9, 
       axisLineStyle: AxisLineStyle(
          cornerStyle: CornerStyle.bothFlat,
          color: Colors.black12,
          thickness: 9),
       pointers: <GaugePointer>[
         RangePointer( 
              value: _volumeValue,
              cornerStyle: CornerStyle.bothFlat,
              width: 12,
              sizeUnit: GaugeSizeUnit.logicalPixel,
              color: Colors.orangeAccent,
              gradient: const SweepGradient(
                colors: <Color>[
                              Color(0XFFFE29D2), 
                              Color(0XFFFE29D2) 
                             ],
                             stops: <double>[0.25, 0.75] 
              )),
         MarkerPointer(
             value: _volumeValue,
             enableDragging: true,
             onValueChanged: onVolumeChanged,
             markerHeight: 20,
             markerWidth: 20,
             markerType: MarkerType.image,
        
             color: Color(0XFFFFAB40),
             borderWidth: 2,
             borderColor: Colors.white54) 
         ],
        annotations: <GaugeAnnotation>[
             GaugeAnnotation(
                             angle: 90,
                             axisValue: 5,
                             positionFactor: 0.1,
                             widget: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 
                                 Text(_volumeValue.ceil()
                                          .toString() + '%',
                                          style: TextStyle(
                                               fontSize: 30,
                                               fontWeight: FontWeight .bold,
                                               color: Color(0XFFFE29D2))),
                                               Text("Consumed",style: TextStyle(color: Colors.white,fontSize: 20),)
                               ],
                             ) 
          )
       ] 
    )
  ] 
),
                           ),
                         ],
                       ),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                       slider("Protein","78","150"),
                       slider("Protein","78","150"),
                       slider("Protein","78","150"),
                     ],)
                   ],
                 ),
                 ),
                 
                 ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical:20.0),
                         child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                 Text("Todays Workout",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:23),),
                 Container(height: 40,width: 170,decoration: BoxDecoration(
                   color: Color(0xFFF435CD),
                   borderRadius: BorderRadius.circular(20)),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                     IconButton(icon: Icon(Icons.add,color: Colors.white,), onPressed: (){}),
                     Text("Workouts",style: TextStyle(color:Colors.white,))
                   ],),
                   )
               ],),
                       ),

                       Container(
                         width: Get.width,
                         height: 300,
                                                child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           itemCount: 6,
                           itemBuilder: (context,i){
                             return     Column(
                           
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal:8.0),
                               child: Container(
                                 height: 150,
                                 width: 130,
                                 child: Stack(children: [
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,

                                                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          image:DecorationImage(image:AssetImage("asset/girltwo.jpg"),fit: BoxFit.cover),
                                          

                                        ),
                                      ),
                                    ),
                                                Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,

                                                                    child:Container(
                                                                      height: 40,
                                                                      width: 40,
                                                                     
                                                                      decoration: BoxDecoration(
 color: Color(0xFF50C0E8),
 borderRadius: BorderRadius.circular(25)
                                                                      ),
                                                                      child: IconButton(icon: Icon(Icons.play_arrow,size: 30,color: Colors.white,),onPressed: (){},))
                                    ),
                                 ],),
                               ),
                             ),
                             Text("SpinWoekout",style: TextStyle(color: Colors.white),),
                              Text("32",style: TextStyle(color: Colors.white),)
                           ]);
                           }),
                       ),
             ],),
           ),

        ),
              ),
      );
  }
}