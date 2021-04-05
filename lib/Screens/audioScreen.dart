import 'dart:ui';

// import 'package:audioplayers/audio_cache.dart';
import 'package:workoutapp/const/textstyle.dart';
import 'package:workoutapp/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class AudioScreen extends StatefulWidget {
  @override
  _AudioScreenState createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen>with SingleTickerProviderStateMixin{
//      double _volumeValue = 50;
// void onVolumeChanged(double value) {
//  setState(() {
//     _volumeValue = value;
//  }); 
// }
   @override
   void initState() {
    super.initState();
    _position = _slider;
    _animationIconController1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
      reverseDuration: Duration(milliseconds: 750),
    );
    // audioPlayer = new AudioPlayer();
    // audioCache = new AudioCache(fixedPlayer: audioPlayer);
  //   audioPlayer.onDurationChanged.listen((Duration d) {
  //   print('Max duration: $d');
  //   setState(() => _duration = d);
  // });

  //  audioPlayer.onAudioPositionChanged.listen((Duration  p) => {
  //   print('Current position: $p'),
  //   setState(() => _position = p)
  // }
  // );
  }
  AnimationController _animationIconController1;
// AudioCache audioCache;
// AudioPlayer audioPlayer;
Duration _duration = new Duration();
Duration _position = new Duration();
Duration _slider = new Duration(seconds: 0);
double durationvalue;
bool issongplaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFF393871),
      extendBodyBehindAppBar: true,
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:12.0),
        child: SafeArea(
                  child: Container(
            color:Color(0xFF393871) ,
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Text("Main Heading",style: headingStyle,),
                  IconButton(icon: Icon(Icons.search,size: 40,color: Color(0xFF43C3E6),), onPressed:(){},)
                 ],),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                   Container(
                   height: 200,
                   width: 150,
                   decoration: BoxDecoration(
                     color:Color(0xFF413F8A),
                     borderRadius:BorderRadius.circular(20),
                   ),
                   child: Column(
                     children: [
                       Container(
                         height: 85,
                         width: Get.width,
                         decoration: BoxDecoration(
                         image:DecorationImage(image: AssetImage("asset/girl.jpg"),fit: BoxFit.cover),

                       ),),
                       SizedBox(height:8),
                                   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
 Icon(
                          Icons.navigate_before,
                          size: 35,
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add code to pause and play the music.
                          },
                          child: ClipOval(
                            child: Container(
                              color: Color(0xFFDA3CD4),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedIcon(
                                  icon: AnimatedIcons.play_pause,
                                  size: 25,
                                  progress: _animationIconController1,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          size: 35,
                          color: Colors.white,
                        ),
                     ],),
                       Container(
                         height: 40,
                         width: Get.width,
                         child: Slider(
                      activeColor: Color(0xFFDA3CD4),
                      inactiveColor: Colors.grey,
                      value: _position.inSeconds.toDouble(),
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (double value) {
                          // Add code to track the music duration.
                      },
                    ),
                       ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("12:23/",style: TextStyle(color:Colors.white),),
                        Text("12:23",style: TextStyle(color:Colors.grey),),
                      ],
                    ),
                     
                     ],
                   ),
                   ),
                      Container(
                   height: 200,
                   width: 220,
                   decoration: BoxDecoration(
                     color:Color(0xFF413F8A),
                     borderRadius:BorderRadius.circular(20),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical:8.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       
                       children: [
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Text("Details",style: TextStyle(color: Colors.white,fontSize: 23),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Row(
                          children: [
                            Text("Time Left",style: TextStyle(color: Color(0xFF5B4B9E),fontSize: 16),),
                             Text("32m",style: TextStyle(color: Colors.white,fontSize: 13),),
                            

                          ],
                        ),
                      ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Container(
                                                                            height: 80,
                                                                            width: 80,
                                                                           
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
    
                                             fontSize: 20,
    
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

                                                                            Container(height: 40,width: 80,decoration: BoxDecoration(
      color:Color(0xFFFA2BD5),
      borderRadius: BorderRadius.circular(15)
      
    ),
    child: Center(child: Text("Pause",style: TextStyle(color:Colors.white),)),
    ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(left:18.0),
                                                                      child: Text("-59asd",style: TextStyle(color: Color(0xFFFA2BD5),fontSize: 25),),
                                                                    )
                     ]),
                   ),
                   ),
                 ],),

               
                

                     Padding(
                       padding: const EdgeInsets.all(22.0),
                       child: Text("Next Workout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
                     ),

                               Container(
                         width: Get.width,
                         height: 160,
                                                child: ListView.builder(
                           scrollDirection: Axis.horizontal,
                           itemCount: 6,
                           itemBuilder: (context,i){
                             return     Column(
                           
                           children: [
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal:8.0),
                               child: Container(
                                 height: 120,
                                 width: 150,
                                 child: Stack(children: [
                                    Positioned(

                                                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          image:DecorationImage(image:AssetImage("asset/girltwo.jpg"),fit: BoxFit.cover),
                                          

                                        ),
                                      ),
                                    ),
                                                Center(
                                                  child: Positioned(
                                                    top: 30,
                                                    left: 26,

                                                                      child:Container(
                                                                        height: 40,
                                                                        width: 40,
                                                                       
                                                                        decoration: BoxDecoration(
 color: Color(0xFF50C0E8),
 borderRadius: BorderRadius.circular(25)
                                                                        ),
                                                                        child: IconButton(icon: Icon(Icons.play_arrow,size: 30,color: Colors.white,),onPressed: (){},))
                                    ),
                                                ),
                                 ],),
                               ),
                             ),
                             Text("SpinWoekout",style: TextStyle(color: Colors.white),),
                              Text("32",style: TextStyle(color: Colors.white),)
                           ]);
                           }),
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
                         child: Center(child: Text("Add Workout",style: TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),)),
                       ),

                        Padding(
                       padding: const EdgeInsets.all(22.0),
                       child: Text("Music For Training",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white)),
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:12.0),
                       child: Container(
                         width: Get.width,
                         height: 140,
                         decoration: BoxDecoration(
                        color: Color(0xFF40408A),
                        borderRadius: BorderRadius.circular(22)

                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Column(
                           children: [
                             Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                    ClipOval(
                                    child: Container(
                                      color: Color(0xFFDA3CD4),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AnimatedIcon(
                                          icon: AnimatedIcons.play_pause,
                                          size: 21,
                                          progress: _animationIconController1,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Relaxation Treatment",style: TextStyle(color: Colors.white,fontSize:20 ),)),
   IconButton(icon: Icon(Icons.forward,color: Colors.purple,size: 15,),onPressed: (){},),
                     IconButton(icon: Icon(Icons.forward,color: Colors.purple,size: 15,),onPressed: (){},),
                             ],),
                              Container(
                         height: 40,
                         width: Get.width,
                         child: Slider(
                      activeColor: Color(0xFFDA3CD4),
                      inactiveColor: Colors.grey,
                      value: _position.inSeconds.toDouble(),
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (double value) {
                          // Add code to track the music duration.
                      },
                    ),
                       ),
                           ],
                         ),
                       ),
                       ),
                     ),
                    
   

 SizedBox(height: 20,),

           Padding(
                       padding: const EdgeInsets.symmetric(horizontal:12.0),
                       child: Container(
                         width: Get.width,
                         height: 80,
                         decoration: BoxDecoration(
                        color: Color(0xFF40408A),
                        borderRadius: BorderRadius.circular(22)

                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                    ClipOval(
                                    child: Container(
                                      color: Color(0xFFDA3CD4),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AnimatedIcon(
                                          icon: AnimatedIcons.play_pause,
                                          size: 21,
                                          progress: _animationIconController1,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
Padding(
  padding: EdgeInsets.all(8.0),
  child: Text("Relaxation Treatment",style: TextStyle(color: Colors.white,fontSize:20 ),)),
 
                             ],),
                  Text("20:20:20",style: TextStyle(color: Colors.grey,fontSize:10 ),)
                           ],
                         ),
                       ),
                       ),
                     ),
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}