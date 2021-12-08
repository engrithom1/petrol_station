import 'package:flutter/material.dart';
import 'package:petrol_station/config/palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubMenuBarItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const SubMenuBarItem({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.w,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
