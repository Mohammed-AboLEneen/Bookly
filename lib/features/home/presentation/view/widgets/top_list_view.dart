import 'package:bookly/features/home/presentation/view/widgets/top_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class TopListView extends StatelessWidget {
  const TopListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const TopListViewItem(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
    );
  }
}
