import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/search_icon.dart';
import 'package:bookly/features/home/presentation/view/widgets/top_list_view.dart';
import 'package:bookly/features/home/presentation/view/widgets/top_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'best_seller_list_view.dart';
import 'best_seller_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(

          padding: EdgeInsets.only(top: 45.0.h, left: 25.w, right: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 80.w,
                    height: 20.h,
                    child: Image.asset(AssetsClass.logoImage),
                  ),
                  const Spacer(),
                  const SearchSvgIcon(),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
                child: const TopListView(),
              ),
              SizedBox(
                height: 49.h,
              ),
              const Text('Best Seller', style: BooklyStyles.textStyle20),
              SizedBox(
                height: 20.h,
              ),
              const BestSellerListView()
            ],
          ),
        ),
      )
    );
  }
}
