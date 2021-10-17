import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'dart:core';
import 'dart:async';
class image_switch{

   int hour=2;
  Future <void>  check_time() async{

    var date = DateTime.now();
    var result=DateFormat("Hm").format(date).toString();
    if(int.parse(result[0])>0){
      print(result[0]);
      hour=int.parse(result.substring(0,2));
    }
    else{
      hour=int.parse(result[1]);
    }
    print("this is the hour:{$hour}");
  }
  String image_switcher(){
    print("This is the hour :$hour");
   if(hour>=6 && hour<12){
     return "assets/background/morning.png";
   }
   else if (hour>=12 && hour<15) {
     return "assets/background/noon.png";
   }
   else if(hour>=15 && hour<18){
     return "assets/background/afternoon.png";
   }
   else
     return "assets/background/night.png";


  }




}