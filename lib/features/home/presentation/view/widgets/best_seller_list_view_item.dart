import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/routers.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/BookModel.dart';
import 'featured_book_item.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {

  final BookModel book;
  const BestSellerListViewItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        context.push(BooklyRouters.detailsBookView, extra: book);
      },
      child: SizedBox(

        width: MediaQuery.of(context).size.width * .9,
        height: 110,
        child: Row(
          children: [
            FeaturedBookItem(imageUrl: book.volumeInfo?.imageLinks?.smallThumbnail ?? '',),
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(book.volumeInfo?.title ?? 'No Title',
                        maxLines: 2,
                        style: BooklyStyles.textStyle20
                            .copyWith(fontFamily: font2, overflow: TextOverflow.ellipsis)),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(book.volumeInfo?.authors?[0] ?? 'No Authors',
                        maxLines: 1,
                        style: BooklyStyles.textStyle14
                            .copyWith(fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis)),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(

                      children: [
                        Text(
                          'Free',
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
