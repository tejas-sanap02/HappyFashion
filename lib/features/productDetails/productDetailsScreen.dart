import 'package:ecommerce/features/productDetails/productDetailsWidget/ColorWIdget.dart';
import 'package:ecommerce/features/productDetails/productDetailsWidget/selectSizeWidget.dart';
import 'package:ecommerce/utils/custom_widget/commonAppbar.dart';
import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title:CommonAppbar(),titleSpacing: 0,automaticallyImplyLeading: false, ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppBar().preferredSize.height *2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              CustomText(text: "Home  >  Men  >  Shirt  >  Zudio Shirt",bottom: 8,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 620,
                      width: 90,
                      child: ListView.separated(
                        padding: EdgeInsets.zero,

                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),

                        itemCount: 8,
                        itemBuilder: (context, index) => AspectRatio(aspectRatio: 3/4, child: Container(height: 400,color: Colors.grey,),),
                        separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 8,); },)),
                  SizedBox(width: 18,),
                  Container(
                    height: 620,
                    color: Colors.blue,
                    child: AspectRatio(aspectRatio: 3/4,child:    Container(
                        height: 620,
                        color: Colors.green),),
                  ),
                  SizedBox(width: 48,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     CustomText(text: "U.S. POLO ASSN.",fontSize: 32,fontWeight: FontWeight.w700,),
                     CustomText(text: "Navy Blue - Cotton Solid Shirts For Men",fontSize: 18,),
                     SizedBox(height: 18,),
                     Row(
                       children: [
                         CustomText(text: "₹1200",right: 12,fontSize: 28,),
                         Text("₹2000", style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 18,),),
                         CustomText(text: "(40% off)",left: 12,fontSize: 18,),
                       ],
                     ),
                     CustomText(text: "(Inclusive of all taxes)",right: 12,fontSize: 14,bottom: 18,),
                     CustomText(text: "Extra ₹100 OFF on ₹999 (Code: Welcome)",right: 12,fontSize: 18,fontWeight: FontWeight.w500,),
                     SizedBox(height: 18,),
                     ColorWidget(),
                     SizedBox(height: 18,),

                     SelectSizeWidget(),




                   ],
                 )


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
