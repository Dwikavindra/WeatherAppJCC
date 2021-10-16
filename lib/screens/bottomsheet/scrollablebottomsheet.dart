import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class bottomsheet extends StatefulWidget {
  const bottomsheet({Key? key}) : super(key: key);

  @override
  _bottomsheetState createState() => _bottomsheetState();
}

class _bottomsheetState extends State<bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize:0.06,
      minChildSize:0.05,
      maxChildSize:0.8,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(50),
            topRight: Radius.circular(50),
          )
        ),
          child: ListView(
              controller:scrollController,
              children:<Widget>[
                Center(
                  child: Container(
                    height:5.h,
                    width:165.w,
                    decoration: BoxDecoration(
                      color:  Color(0xff494545),
                      borderRadius:BorderRadius.only(
                        bottomLeft:Radius.circular(50),
                        bottomRight:Radius.circular(50),
                      )
                    )
                  ),

                ),


              ]
          )
          );
      },
    );
  }
}

