import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? right;
  final double? left;
  final double? top;
  final double? bottom;
  final double? fontSize;
  final Color? color;
  final String? font;
  final EdgeInsets? padding;
  final Function()? onTap;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;
  final FontWeight? fontWeight;

  CustomText({
    required this.text,
    this.right,
    this.left,
    this.top,
    this.bottom,
    this.fontSize,
    this.color,
    this.font,
    this.padding,
    this.onTap,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.textDecoration,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsets finalPadding;

    if (padding != null) {
      finalPadding = padding!;
    } else {
      finalPadding = EdgeInsets.only(
        right: right ?? 0.0,
        left: left ?? 0.0,
        top: top ?? 0.0,
        bottom: bottom ?? 0.0,
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: finalPadding,
        child: Text(
          text,
          textAlign: textAlign,
          maxLines: maxLines,
          overflow: overflow,
          style: TextStyle(
            fontSize: fontSize,
            color: color,
            fontFamily: font,
            decoration: textDecoration,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
