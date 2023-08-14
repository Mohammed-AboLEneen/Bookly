import 'package:bookly/features/home/presentation/view/widgets/cashed_image.dart';
import 'package:flutter/cupertino.dart';

class FeaturedBookItem extends StatelessWidget {

  final String? imageUrl;
  const FeaturedBookItem({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: ClipRRect(

          borderRadius: BorderRadius.circular(16),

          child: BuildCashedImage(
            imageUrl: imageUrl ?? '',
          )
      ),
    );
  }
}
