import 'package:ecommerce/utils/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class BenefitsWidget extends StatelessWidget {
  const BenefitsWidget({super.key});


  Widget iconDataHorizontal({required IconData icon,required String title,required bool isIconHorizontal,double? iconSize,}){
    return (isIconHorizontal)? Row(
      children: [
        Icon(icon, size: iconSize ?? 3.h,),
        const SizedBox(width: 8,),
        Text(
          title,
          softWrap: true,
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
        )
      ],
    ): Column(
      children: [
        Icon(icon, size: iconSize?? 3.h,),
        const SizedBox(width: 8,),
        Text(title,
          softWrap: true,
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700),
        )
      ],
    );;
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        iconDataHorizontal(icon:  Icons.timer_outlined, title: "24/7 Customer service",isIconHorizontal: ResponsiveLayout.isDesktop(context)),
        iconDataHorizontal(icon:  CupertinoIcons.refresh_thick, title: "10 DAYS EASY RETURNS",isIconHorizontal: ResponsiveLayout.isDesktop(context)),
        iconDataHorizontal(icon:  Icons.local_shipping_outlined, title: "FREE SHIPPING IN INDIA",isIconHorizontal: ResponsiveLayout.isDesktop(context)),
      ],
    );
  }
}
