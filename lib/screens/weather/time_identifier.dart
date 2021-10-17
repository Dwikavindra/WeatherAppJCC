import 'package:weather_app/screens/weather/imageswitch.dart';
import 'package:intl/intl.dart';
import 'dart:core';
class time_identifier extends image_switch {
  String time_switcher(){
    super.check_time();

    if(super.hour>=6 && super.hour<12){
      return "Pagi";
    }
    else if (super.hour>=12 && super.hour<15) {
      return "Siang";
    }
    else if(super.hour>=15 && super.hour<18){
      return "Sore";
    }
    else
      return "Malam";
 }
 String weekday(){
   var date = DateTime.now();
   var result=DateFormat("E").format(date).toString();
   return result+"day";
 }
 String weekdate(){
    var date= DateTime.now();
    var result= DateFormat("d").format(date).toString();
    return result;
 }
 String month(){
    var date= DateTime.now();
    var result= DateFormat("MMMM").format(date).toString();
    return result;
 }
 String year(){
   var date= DateTime.now();
   var result= DateFormat("y").format(date).toString();
   return result;
 }
 }