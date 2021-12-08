import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petrol_station/config/palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  const MyAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/puma.jpg"),
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: Text(
          title,
          style: TextStyle(
              color: Palette.mainBlack,
              fontSize: 25.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
