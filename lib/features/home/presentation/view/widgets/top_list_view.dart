import 'package:bookly/features/home/presentation/view/widgets/top_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopListView extends StatelessWidget {
  const TopListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(right: 8.0.w),
        child: const ListViewItem(),
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
    );
  }
}
