import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class CustomIcon extends StatelessWidget {

  const CustomIcon({super.key, required this.width, required this.height, required this.widget});

  final double width;
  final double height;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Material(

      borderRadius: BorderRadius.circular(70),
      color: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(

        borderRadius: BorderRadius.circular(20),
        onTap: (){
          context.pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(

            width: width.w,
            height: height.h,
            child: widget,
          ),
        ),
      ),
    );
  }
}
