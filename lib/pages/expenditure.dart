import 'package:flutter/material.dart';
import 'package:petrol_station/components/my_appbar.dart';
import '../navigation_bloc/naviagtion_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Expenditure extends StatelessWidget with NavigationStates {
  //const Expenditure({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110.h),
        child: MyAppBar(title: "Expenditure"),
      ),
      body: Center(
        child: Text(
          "expenditure",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 28.sp,
          ),
        ),
      ),
    );
  }
}
