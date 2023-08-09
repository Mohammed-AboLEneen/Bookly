import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: BooklyStyles.textStyle16
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 5,
        ),
        const Opacity(
          opacity: .5,
          child: Text(
            '(2548)',
            style: BooklyStyles.textStyle14,
          ),
        ),
      ],
    );
  }
}
