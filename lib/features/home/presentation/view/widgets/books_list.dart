import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: 8.0.w),
        child: const ListViewItem(),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
    );
  }
}
