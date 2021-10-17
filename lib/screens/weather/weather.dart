import 'package:flutter/material.dart';
import 'imageswitch.dart';
import 'package:weather_app/screens/bottomsheet/scrollablebottomsheet.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'time_identifier.dart';
import '../../weatherapi.dart';



class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late image_switch testing;
  late time_identifier time;
  late String image;
  late String timeofday;
  late String year;
  late String weekdate;
  late String weekday;
  late String month;
  @override
  void initState() {
    super.initState();
      testing= image_switch();
      time=time_identifier();
      initializeDateFormatting();
      testing.check_time();
      setState(() {
        timeofday=time.time_switcher();
        image=testing.image_switcher();
        year=time.year();
        weekdate=time.weekdate();
        weekday=time.weekday();
        month=time.month();

      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
            )),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30.h, left: 11.w),
                      child: Text("Selamat $timeofday, Dwika",
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
                      child: Text(weekday,
                          style: TextStyle(
                            fontSize: 34.sp,
                            color: Colors.white,
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 22.h, left: 23.w),
                      child: Text("$weekdate $month",
                          style: TextStyle(
                            fontSize: 34.sp,
                            color: Colors.white,
                          ))),
                  Container(
                      margin: EdgeInsets.only(top: 22.h, left: 23.w),
                      child: Text("$year",
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
        Positioned(
          top:21.h,
          right:30.w,
          child:IconButton(
            iconSize:40.sp,
            color: Colors.white,
            icon:Icon(Icons.refresh),
            onPressed: () { setState(() {
              testing.check_time();
              image=testing.image_switcher();
              timeofday=time.time_switcher();
              image=testing.image_switcher();
              year=time.year();
              weekdate=time.weekdate();
              weekday=time.weekday();
              month=time.month();

            }); },

          )
        ),
        SizedBox.expand(child: bottomsheet())
      ]),
    )
    );
  }
}
