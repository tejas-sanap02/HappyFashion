import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:ecommerce/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height:  ResponsiveLayout.responsiveManual(context, Mob: 205, Tab: 280, Web: 320),//350,
          child: Container(color: Colors.green,),
        ),
        CustomText(text: "Zara", top: 6, bottom: 2, fontSize: 14.sp, fontWeight: FontWeight.bold, left: 4,),
        CustomText(text: "Green Shirt", left: 4,fontSize: 14.sp,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(text: "RS. 450", left: 5, right: 8,fontSize: 14.sp,),
            Text("RS. 900", style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 13.sp,),),
            CustomText(text: "(57% off)", left: 8, fontSize: 13.sp, color: Colors.orangeAccent,),
          ],
        )
      ],
    );
  }
}
