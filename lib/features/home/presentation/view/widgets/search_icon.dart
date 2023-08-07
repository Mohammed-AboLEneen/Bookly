import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchSvgIcon extends StatelessWidget {
  const SearchSvgIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(

      borderRadius: BorderRadius.circular(70),
      color: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(

        borderRadius: BorderRadius.circular(20),
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(

            width: 25.w,
            height: 25.h,
            child: SvgPicture.asset(
              'assets/images/search.svg',

            ),
          ),
        ),
      ),
    );
  }
}
