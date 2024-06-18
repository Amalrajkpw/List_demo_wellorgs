 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list_demo_wellorgs/view/home_screen.dart';

void main (){
  runApp(    DemoListApp());
 }
 
 class DemoListApp extends StatelessWidget {
   const DemoListApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return   GetMaterialApp(
       debugShowCheckedModeBanner: false,
       home:   HomeScreen(),
     );
   }
 }
 