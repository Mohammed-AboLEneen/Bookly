import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import 'book_item.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: 8.0.w),
        child:  const ListViewItem(),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
    );
  }
}
