import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_details_view_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/details_view_button.dart';
import 'package:bookly/features/home/presentation/view/widgets/similar_books_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsBookView extends StatelessWidget {
  const DetailsBookView({super.key});


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(

        slivers: [

          SliverFillRemaining(

            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(

                children: [

                  const SizedBox(
                    height: 30,
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
                  const BookRating(),
                  const SizedBox(
                    height: 40,
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DetailsViewButton(

                          text: '19.99 €',
                          fontColor: Colors.black,
                          fontSize: 18,
                          backGroundColor: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)
                          ),

                        ),
                        DetailsViewButton(

                          text: 'Free preview',
                          fontColor: Colors.white,
                          fontSize: 16,
                          backGroundColor: Color(0xffEF8262),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)
                          ),

                        )
                      ],
                    ),
                  ),

                  const Expanded(child: SizedBox(height: 40,)),

                  Align(

                    alignment: Alignment.centerLeft,
                    child: Text('You can also like', style: BooklyStyles.textStyle14.copyWith(

                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(

                    height: size.height *.15,
                    child: SimilarBooksList(),

                  ),

                  const SizedBox(height: 40,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
