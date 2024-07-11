import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/material.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(text: "COLOR :",fontSize: 18,fontWeight: FontWeight.w600,right: 8,),
            CustomText(text: "Navy Blue",fontSize: 16)
          ],
        ),
        SizedBox(height: 8,),
        Container(

          width: 400,
          child: Wrap(
            children: List.generate(12, (index) => colorListWidget(),).toList(),
          ),
        ),
        // SizedBox(
        //   height: 40,
        //   width: 600,
        //   child: GridView.builder(
        //     itemCount: 8,
        //     shrinkWrap: true,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6,childAspectRatio: 0.2,),
        //     itemBuilder: (context, index) {
        //     return colorListWidget();
        //   },),
        // )

      ],
    );
  }
  Widget colorListWidget() {
    return  Container(
      margin: EdgeInsets.only(right: 12,bottom: 12),
      height: 34,
      width: 34,
      decoration:  BoxDecoration(shape: BoxShape.circle,
          color: Colors.cyan,
          border: Border.all(width: 2,color: Colors.white),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 1,
              spreadRadius: 1,
              color: Colors.black26,
            ),]
      ),


    );
  }

}
