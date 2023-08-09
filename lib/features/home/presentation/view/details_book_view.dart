import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_details_view_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/top_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBookView extends StatelessWidget {
  const DetailsBookView({super.key});


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(

          children: [

            const SizedBox(
              height: 40,
            ),
            const CustomDetailsViewAppBar(),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .22),
              child: const ListViewItem(),
            ),
            const SizedBox(
              height: 40,
            ),
            Text('The Jungle Book', style: BooklyStyles.textStyle30,),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: .7,
              child: Text('Rudyard Kipling', style: BooklyStyles.textStyle18.copyWith(

                fontWeight: FontWeight.w500
              ),),
            ),
            SizedBox(
              height: 14.h,
            ),
            const BookRating()
          ],
        ),
      ),
    );
  }
}
