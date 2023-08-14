import 'package:bookly/core/utils/routers.dart';
import 'package:bookly/features/home/presentation/view_model/simillar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/simillar_books_cubit/similar_books_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'featured_book_item.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key,});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state){

        if(state is SimilarBooksSuccess){

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: GestureDetector(

                onTap: (){

                  context.push(BooklyRouters.detailsBookView, extra: state.books[index]);
                },
                child: FeaturedBookItem(
                  imageUrl:
                  state.books[index].volumeInfo?.imageLinks?.smallThumbnail,
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
          );
        }else if(state is SimilarBooksFailure){

          return Center(child: Text(state.message ?? 'Some Thing Is Wrong in Similar Items'),);
        }else{

          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
