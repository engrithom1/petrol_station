import 'package:flutter/material.dart';
import 'package:petrol_station/config/palette.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuBarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const MenuBarItem({Key key, this.icon, this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              icon,
              size: 18.sp,
              color: Palette.mainWhite,
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.w,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
