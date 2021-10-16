import 'package:flutter/material.dart';
import 'imageswitch.dart';
import 'package:weather_app/screens/bottomsheet/scrollablebottomsheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/background/noon.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
            )),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30.h, left: 11.w),
                      child: Text("Selamat Siang,Dwika",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                          ))),
                  Container(
                      width: 109.w,
                      height: 109.w,
                      margin:
                          EdgeInsets.only(top: 15.h, right: 279.w, left: 23.w),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 217.h, left: 23.w),
                      child: Text("Sunny",
                          style: TextStyle(
                            fontSize: 48.sp,
                            color: Colors.white,
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 22.h, left: 23.w),
                      child: Text("Wednesday",
                          style: TextStyle(
                            fontSize: 34.sp,
                            color: Colors.white,
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 22.h, left: 23.w),
                      child: Text("13 October",
                          style: TextStyle(
                            fontSize: 34.sp,
                            color: Colors.white,
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 22.h, left: 23.w),
                      child: Text("2021",
                          style: TextStyle(
                            fontSize: 34.sp,
                            color: Colors.white,
                          )))
                ])),
        Positioned(
            top: 246.h,
            left: 12.w,
            child: Text("25",
                style: TextStyle(fontSize: 96, color: Colors.white))),
        Positioned(
          top: 246.h,
          left: 168.w,
          child: Text("C",
              style: TextStyle(
                fontSize: 96,
                color: Colors.white,
              )),
        ),
        Positioned(
          top: 210.h,
          left: 130.w,
          child: Text("o",
              style: TextStyle(
                fontSize: 80,
                color: Colors.white,
              )),
        ),
        SizedBox.expand(child: bottomsheet())
      ]),
    ));
  }
}
