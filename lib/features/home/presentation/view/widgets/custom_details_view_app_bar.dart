import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_icon4.dart';

class CustomDetailsViewAppBar extends StatelessWidget {
  const CustomDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(

      children: [

        CustomIcon(
            width: 30,
            height: 30,
            widget: Icon(Icons.close, size: 30,)
        ),
        Spacer(),
        CustomIcon(
            width: 30,
            height: 30,
            widget: Icon(Icons.shopping_cart_outlined, size: 25,)
        ),
      ],
    );
  }
}
