import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/search_icon.dart';
import 'package:bookly/features/home/presentation/view/widgets/top_list_view.dart';
import 'package:bookly/features/home/presentation/view/widgets/top_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            SizedBox(
              height: 110.h,
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                children: [
                  const ListViewItem(),
                  SizedBox(
                    width: 30.w,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Harry Potter and the Goblet of Fire',
                              style: BooklyStyles.textStyle20
                                  .copyWith(fontFamily: font2)),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text('J.K. Rowling',
                              style: BooklyStyles.textStyle14
                                  .copyWith(fontWeight: FontWeight.w500)),
                          Row(
                            children: [
                              Text(
                                '19.99 €',
                                style: BooklyStyles.textStyle20
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              const FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: Color(0xffFFDD4F),
                                size: 15,
                              ),
                              Text(
                                '4.8',
                                style: BooklyStyles.textStyle16
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                '(2548)',
                                style: BooklyStyles.textStyle14
                                    .copyWith(color: const Color(0xff707070)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
