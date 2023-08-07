import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/view/widgets/search_icon.dart';
import 'package:bookly/features/home/presentation/view/widgets/top_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.0.h, horizontal: 25.w),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(

              children: [

                SizedBox(

                  width: 80.w,
                  height:20.h,
                  child: Image.asset(AssetsClass.logoImage),
                ),
                const Spacer(),
                const SearchSvgIcon(),
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * .3,
              child: const TopListView(),
            ),

            SizedBox(height: 30.h,),
            Text('Best Seller', style: TextStyle(fontSize: 20.sp,),),
          ],
        ),
      ),
    );
  }
}
