import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/Newest_books_states.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
        builder: (context, state) {
      if (state is NewestBooksSuccess) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerListViewItem(
              book: state.books[index],
            ),
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: state.books.length,
        );
      } else if (state is NewestBooksFailure) {
        return const Center(
          child: Text(
            'Some Thing is Wrong, try Again!',
            style: BooklyStyles.textStyle18,
          ),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
