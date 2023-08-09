import 'package:bookly/features/home/presentation/view/widgets/top_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      width: MediaQuery.of(context).size.width * .9,
      height: 110,
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
                  const SizedBox(
                    height: 2,
                  ),
                  Text('J.K. Rowling',
                      style: BooklyStyles.textStyle14
                          .copyWith(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 5,
                  ),
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
                      const SizedBox(
                        width: 6.3,
                      ),
                      Text(
                        '4.8',
                        style: BooklyStyles.textStyle16
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 5,
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
    );
  }
}
