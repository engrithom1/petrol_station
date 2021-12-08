import 'package:flutter/material.dart';
import 'package:petrol_station/components/my_appbar.dart';
import '../navigation_bloc/naviagtion_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Receiving extends StatelessWidget with NavigationStates {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.h),
        child: MyAppBar(title: "Receiving"),
      ),
      body: Center(
        child: Text(
          "Receiving",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 28.sp,
          ),
        ),
      ),
    );
  }
}
