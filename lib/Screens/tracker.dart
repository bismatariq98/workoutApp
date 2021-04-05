import 'package:workoutapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:fl_chart/fl_chart.dart';
class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
    List<Color> gradientColors = [
    const Color(0xffAD43AF),
    const Color(0xffAD43AF),
  ];

  bool showAvg = false;
   double _volumeValue = 50;
void onVolumeChanged(double value) {
 setState(() {
    _volumeValue = value;
 }); 
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3A3B74),
        body: SafeArea(child:
         Container(
          height: Get.height,
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
                                    gradient:LinearGradient(
                             colors: [Color(0xFFAF48EA),
                             Color(0xFF5C4AE6)
                             ],
                             begin: Alignment.topLeft,end:Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(20)
                      ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                    padding: const EdgeInsets.all(19.0),
                                    child: 
                                    Text("loveasdasdasdas",style: TextStyle(color:Colors.white,fontSize: 18),),
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
                            top: 10,
                            left: 300,
                            right: 30,
                            child: Container(
                              height: 40,
                              width:70,
                           
                              child:IconButton(icon: Icon(Icons.crop_sharp,color: Colors.white,), onPressed: (){

                              }))),

                        ],
                      ),
                    ),
                  ),
                ),

                  Padding(
                  padding: const EdgeInsets.only(top:6.0,left: 30.0,),
                  child:
                   Row(
                     children: [
                       Text("Route Built",style: TextStyle(color: Colors.white,fontSize: 25),),
                       SizedBox(width: 10,),
                       Text("You have to run 12 km",style: TextStyle(color: Colors.pink,fontSize: 18),),
                     ],
                   ),
                ),
          Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20.0),
                  child: Container(
                    height: 100,
                    width: Get.width,
                     decoration: BoxDecoration(
                       color: Color(0xFF404087),
                        borderRadius: BorderRadius.circular(22),

                     ),
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                           
                            children: [
                              Column(children: [
                        Row(children: [
  Text("You are the best",style: TextStyle(color: Colors.white),),
                             Text("40m/82s",style: TextStyle(color: Color(0xFF4A72B0)),),
],),
 Row(
   children: [
     Text("You are the best",style: TextStyle(color: Colors.white),),  Text("40m/82s",style: TextStyle(color: Color(0xFF4A72B0)),),
   ],
 ),
                           
                              ],),
                          
                           
                          
          
                           
                          ],
                          
                          ),



                          
 Row(
                          children: [
                      Text("-2890",style: TextStyle(color: Colors.pink),),
                                                       Container(
                                                                            height: 120,
                                                                            width: 120,
                                                                           
                                                                            child:
SfRadialGauge(axes: <RadialAxis>[
    
     RadialAxis(
    
      minimum: 0,
    
      maximum: 100,
    
      showLabels: false,
    
      showTicks: false,
    
      axisLineStyle: AxisLineStyle(
    
       thickness: 0.2,
    
       cornerStyle: CornerStyle.bothCurve,
    
       color: Color(0xFFFA2BD5),
    
       thicknessUnit: GaugeSizeUnit.factor,
    
       
    
      ),
    
    annotations: <GaugeAnnotation>[
    
         GaugeAnnotation(
    
                         angle: 90,
    
                         axisValue: 5,
    
                         positionFactor: 0.1,
    
                         widget: Column(
    
                           mainAxisAlignment: MainAxisAlignment.center,
    
                           children: [
    
                             
    
                             Text("28:16",
    
                                      style: TextStyle(
    
                                             fontSize: 15,
    
                                             fontWeight: FontWeight .bold,
    
                                             color: Color(0XFF48C1E9))),
    
                                            
    
                           ],
    
                         ) 
    
      )
    
   ] 
    
     ),

    
    ],
    
    ),
                                                                          ),
                          

                        ],),
                        ],

                      ),
                      
                    ) ,
                    ),
                ),

   Padding(
     padding: const EdgeInsets.symmetric(vertical:20.0),
     child: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1.90,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: Color(0xff323363)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, left: 12.0, top: 24, bottom: 12),
                  child: LineChart(
                    showAvg ? avgData() : mainData(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 34,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  showAvg = !showAvg;
                });
              },
              child: Text(
                'avg',
                style: TextStyle(
                    fontSize: 12, color: showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
              ),
            ),
          ),
        ],
      ),
   ),


   Padding(
     padding: const EdgeInsets.symmetric(horizontal:20.0),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
                               height: 50,
                               width: 170,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(22),
                                 color: Color(0xFF44C2EA)
                                //  gradient:LinearGradient(
                                //    colors: [Color(0xFFAF48EA),
                                //    Color(0xFF5C4AE6)
                                //    ],
                                //    begin: Alignment.topLeft,end:Alignment.bottomRight)
                               ),
                               child: Center(child: Text("Pause",style: TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),)),
                             ),
                               Container(
                               height: 50,
                               width: 170,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(22),
                                 gradient:LinearGradient(
                                   colors: [Color(0xFFAF48EA),
                                   Color(0xFF5C4AE6)
                                   ],
                                   begin: Alignment.topLeft,end:Alignment.bottomRight)
                               ),
                               child: Center(child: Text("Complete",style: TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),)),
                             ),
       ],
     ),
   ),

            ],),
          ),
        )),

      
    );
  }

  LineChartData mainData() {
    return 
    LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) =>
              const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
          FlBorderData(show: true, border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xffAD43AF),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xffAD43AF),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) =>
              const TextStyle(color: Color(0xff68737d), fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xffAD43AF),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData:
          FlBorderData(show: true, border: Border.all(color: const Color(0xffAD43AF), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2).withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1]).lerp(0.2).withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}