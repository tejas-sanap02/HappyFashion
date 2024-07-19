import 'package:ecommerce/features/productDetails/productDetailsWidget/ColorWIdget.dart';
import 'package:ecommerce/features/productDetails/productDetailsWidget/selectSizeWidget.dart';
import 'package:ecommerce/utils/custom_widget/commonAppbar.dart';
import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 28,),
                  CustomText(text: "Home  >  Men  >  Shirt  >  Zudio Shirt",bottom: 8,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 650,
                          width: 80,
                          child: ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: 8,
                            itemBuilder: (context, index) => AspectRatio(aspectRatio: 3/4, child: Container(height: 400,color: Colors.grey,),),
                            separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 8,); },)),
                      SizedBox(width: 28,),
                      Container(
                        height: 650,
                        color: Colors.blue,
                        child: AspectRatio(aspectRatio: 3/4,child: Container(
                            height: 650,
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
                         SizedBox(height: 18,),
                         Container(
                           height: 42,
                           width: 265,

                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),border:  Border.all(color: Colors.grey), color: Colors.black54,),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             mainAxisSize: MainAxisSize.min,
                             children: [
                               Icon(Icons.add_shopping_cart,size: 24,color: Colors.white,),
                               CustomText( text: "Add To Cart",fontSize: 18,left: 8,color: Colors.white,),
                             ],
                           ),
                         ),
                         SizedBox(height: 18,),
                         Row(
                           children: [
                             Container(
                               height: 42,
                               width: 130,
                               decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),border:  Border.all(color: Colors.grey)),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Icon(Icons.favorite,size: 24,),
                                   CustomText( text: "Wishlist",fontSize: 18,left: 8,),
                                 ],
                               ),
                             ),
                             SizedBox(width: 8,),
                             Container(
                               height: 42,
                               width: 130,
                               decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),border:  Border.all(color: Colors.grey)),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   Icon(Icons.share,size: 24,),
                                   CustomText( text: "Share",fontSize: 18,left: 8,),
                                 ],
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height: 18,),
                         Container(color: Colors.black ,height: 1,width: 400,),
                         SizedBox(height: 8,),
                         CustomText(text: "Check Pincode For Delivery",right: 12,fontSize: 14,fontWeight: FontWeight.w500,),
                         SizedBox(height: 12,),
                         Container(
                           height: 42,
                           width: 265,
                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12)),border: Border.all()),
                           child:  Row(
                             children: [
                               SizedBox(width: 8,),
                               Icon(Icons.location_on_sharp),
                               SizedBox(width: 8,),

                               Expanded(
                                 child: TextField(
                                   keyboardType: TextInputType.number,
                                   inputFormatters: <TextInputFormatter>[
                                     FilteringTextInputFormatter.digitsOnly
                                   ],
                                   decoration: InputDecoration(border: InputBorder.none,  isDense: true,
                                       contentPadding: EdgeInsets.zero),
                                 ),
                               ),
                               Container(height: 28,width: 1,color: Colors.black,),

                               InkWell(
                                 onTap: () {},
                                 child: CustomText(text: "Check",left: 12,right: 12,top: 8,bottom: 8,),
                               )
                             ],
                           ),

                         )
                       ],
                     )


                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
