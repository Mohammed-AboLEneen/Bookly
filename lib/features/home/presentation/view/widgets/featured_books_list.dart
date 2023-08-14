import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routers.dart';
import 'featured_book_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(

      builder: (context, state){

        if(state is FeaturedBooksSuccess){

          return ListView.builder(

            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {

              return Padding(
                padding: EdgeInsets.only(right: 8.0.w),
                child: GestureDetector(

                  onTap: (){
                    context.push(BooklyRouters.detailsBookView, extra: state.books[index]);
                  },
                  child: FeaturedBookItem(imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail,),
                ),
              );
            },
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
          );
        }else if(state is FeaturedBooksFailure){

          return Center(child: Text(state.message!),);
        }else{

          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
