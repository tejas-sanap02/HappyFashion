import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/material.dart';

class SelectSizeWidget extends StatelessWidget {
  const SelectSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: "Select Size",fontSize: 18,fontWeight: FontWeight.w600,bottom: 4,),
        SizedBox(height: 8,),

        Wrap(
          children:  List.generate(6, (index) =>   SizeListWidget(),).toList(),
        ),



      ],
    );
  }
}
class SizeListWidget extends StatelessWidget {
  const SizeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9,bottom: 9),
      padding: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),border: Border.all(color: Colors.black)),
      child: CustomText(text: "S",),
    );
  }
}

