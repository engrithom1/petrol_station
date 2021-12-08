import 'package:flutter/material.dart';
import 'package:petrol_station/config/palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Palette.mainGreen, Palette.mainLightGreen],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.sp))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 20.h,
              right: 20.w,
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20.sp),
              )),
          Center(
            child: Image.asset("assets/images/logo-sm.png"),
          ),
        ],
      ),
    );
  }
}
