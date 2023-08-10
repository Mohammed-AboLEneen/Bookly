import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsViewButton extends StatelessWidget {
  const DetailsViewButton(
      {super.key,
      required this.fontColor,
      required this.backGroundColor,
      required this.fontSize,
      required this.borderRadius,
      required this.text});

  final Color fontColor;
  final Color backGroundColor;
  final double fontSize;
  final BorderRadius borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50.h,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          child: Text(
            text,
            style: TextStyle(

                color: fontColor,
                fontSize: fontSize),
          ),
        ),
      ),
    );
  }
}
