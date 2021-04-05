import 'package:workoutapp/main.dart';
import 'package:flutter/material.dart';

Widget slider(String textone,String texttwo,String textthree) {

  return Container(
    height: 80,
    width: 100,
      child: Column(children: [
        Text(textone,style: TextStyle(color:Colors.white),),
        Divider(color: Color(0xFFFF25DA),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(texttwo,style: TextStyle(color:Color(0xFFFF25DA)),),
          Text("/",style: TextStyle(color:Colors.white),),
          Text(textthree,style: TextStyle(color:Colors.white),)
        ],)
    ],),
  );
}