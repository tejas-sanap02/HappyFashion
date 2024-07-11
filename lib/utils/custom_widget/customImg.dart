import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';


class CustomImg extends StatelessWidget {
  final String imgUrl;
  final double? width;
  final double? height;
  final BoxFit? fit;

   CustomImg({
    required this.imgUrl,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    if (imgUrl.startsWith('http')) {

      return CachedNetworkImage(
        imageUrl: imgUrl,
        width: width,
        height: height,
        fit: fit,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      );
    } else if (imgUrl.endsWith('.png')) {
      // Asset Image
      return Image.asset(
        imgUrl,
        width: width,
        height: height,
        fit: fit,
      );
    } else if (imgUrl.endsWith('.svg')) {
      // SVG Image
      return SvgPicture.asset(
        imgUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
      );
    } else {
      // Default Placeholder
      return Container(
        width: width,
        height: height,
        color: Colors.grey,
        child: Center(
          child: Text('Invalid image URL'),
        ),
      );
    }
  }
}
