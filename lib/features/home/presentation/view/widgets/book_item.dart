import 'package:flutter/cupertino.dart';
class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: ClipRRect(

          borderRadius: BorderRadius.circular(16),

          child: Image.asset(
            'assets/images/undraw_Drink_coffee_v3au.png', fit: BoxFit.cover,
          )
      ),
    );
  }
}