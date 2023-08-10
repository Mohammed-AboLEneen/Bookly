import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/routers.dart';
import '../../../../../core/utils/styles.dart';
import 'book_item.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        context.push(BooklyRouters.detailsBookView);
      },
      child: SizedBox(

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
                        const BookRating()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
