import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './auth/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
        home: SplashPage(),
      ),
      designSize: const Size(266, 566),
    );
  }
}
