import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets.dart';

class BuildCashedImage extends StatelessWidget {

  final String imageUrl;
  const BuildCashedImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,

      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => SvgPicture.asset(AssetsClass.loadingImage, fit: BoxFit.cover,),
      errorWidget: (context, url, error) => SvgPicture.asset(AssetsClass.failImage, fit: BoxFit.cover,),
    );
  }
}
