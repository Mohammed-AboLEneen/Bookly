import 'package:bookly/core/methods/toast.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/featured_book_item.dart';
import 'package:bookly/features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_details_view_app_bar.dart';
import 'package:bookly/features/home/presentation/view/widgets/details_view_button.dart';
import 'package:bookly/features/home/presentation/view/widgets/similar_books_list.dart';
import 'package:bookly/features/home/presentation/view_model/simillar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/models/book_model/BookModel.dart';


class DetailsBookView extends StatefulWidget {
  const DetailsBookView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<DetailsBookView> createState() => _DetailsBookViewState();
}

class _DetailsBookViewState extends State<DetailsBookView> {

  @override
  void initState() {
    super.initState();

    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks();
  }
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [

          SliverFillRemaining(

            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
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
                    child: FeaturedBookItem(imageUrl: widget.bookModel.volumeInfo?.imageLinks?.smallThumbnail,),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width*.07),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(widget.bookModel.volumeInfo?.title ?? 'No Title', style: BooklyStyles.textStyle30,),
                        const SizedBox(
                          height: 6,
                        ),
                        Opacity(
                          opacity: .7,
                          child: Text(widget.bookModel.volumeInfo?.authors?[0] ?? 'No Authors', style: BooklyStyles.textStyle18.copyWith(

                              fontWeight: FontWeight.w500
                          ),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const BookRating(),
                  const SizedBox(
                    height: 40,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const DetailsViewButton(

                          text: 'Free',
                          fontColor: Colors.black,
                          fontSize: 18,
                          backGroundColor: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)
                          ),

                        ),
                        DetailsViewButton(

                          text: getText(widget.bookModel.volumeInfo?.previewLink),
                          fontColor: Colors.white,
                          fontSize: 16,
                          backGroundColor: const Color(0xffEF8262),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)
                          ),
                          action: (){

                            if(widget.bookModel.volumeInfo?.previewLink == null){

                              showToast(message: 'This Book Not Available Yet', textColor: Colors.white, bgColor: Colors.red);
                            }else{

                              showToast(message: 'Successfully Entered', textColor: Colors.white, bgColor: Colors.green);
                              _launchUrl(url: widget.bookModel.volumeInfo?.previewLink ?? 'https://www.google.com/');
                            }
                          },
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
                    child: const SimilarBooksList(),

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

  Future<void> _launchUrl({required String url}) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  String getText(String? path){
    if(path == null){
      return 'Not Available';
    }else{

      return 'Preview';
    }
  }
}
