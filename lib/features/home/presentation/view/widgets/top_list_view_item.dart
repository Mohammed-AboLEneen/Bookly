import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopListViewItem extends StatelessWidget {
  const TopListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0.w),
      child: AspectRatio(
        aspectRatio: 135 / 224,
        child: ClipRRect(

            borderRadius: BorderRadius.circular(16),

            child: Image.asset(
              'assets/images/undraw_Drink_coffee_v3au.png', fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}
