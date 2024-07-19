import 'package:ecommerce/features/categoryListWidget.dart';
import 'package:ecommerce/features/home/home_widget/benefits.dart';
import 'package:ecommerce/features/productDetails/productDetailsScreen.dart';
import 'package:ecommerce/features/productListWidget.dart';
import 'package:ecommerce/utils/custom_widget/commonAppbar.dart';
import 'package:ecommerce/utils/custom_widget/customImg.dart';
import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:ecommerce/utils/responsive/responsive.dart';
import 'package:flutter/cupertino.dart' ;
import 'package:flutter/material.dart'  ;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:go_router/go_router.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _allWidgets = List.generate(10, (index) => Categorylistwidget());
  CarouselController carouselController =  CarouselController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      ResponsiveLayout.isMobile(context) == true?
      AppbarForMob():
      const CommonAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 0.0, vertical: ResponsiveLayout.responsiveManual(context,Mob: 12, Tab: 12, Web: 12),),
              child: SizedBox(
                height: ResponsiveLayout.responsiveManual(context,Mob: 100, Tab: 110, Web: 110),
                width: MediaQuery.sizeOf(context).width - ResponsiveLayout.responsiveManual(context, Mob: 24, Tab: 50, Web: 100),
                child: ListView.builder(
                  itemCount: 32,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 12),
                      child: InkWell(
                        onTap: () => context.goNamed("categoryFilterScreen"),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                                width: ResponsiveLayout.responsiveManual(context,Mob: 70, Tab: 75, Web: 80),
                                height: ResponsiveLayout.responsiveManual(context, Mob: 70, Tab: 75, Web: 80),
                                child: CustomImg(imgUrl: "assets/icon/cloththumb.svg")),
                            CustomText(text: "text", top: 4,)
                          ],

                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            CarouselSlider(
                items: [
                  Container(color: Colors.grey,)
                ],
                options: CarouselOptions(
                  height: ResponsiveLayout.responsiveManual(context, Mob: 225, Tab: 350, Web: 450),//450,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,

                  //  onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )),
            CustomText(text: "Hello", top: 22, bottom: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Center(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ResponsiveLayout.responsiveManual(context, Mob: 4, Tab: 6, Web: 10),
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ResponsiveLayout.responsiveManual(context, Mob: 2, Tab: 3, Web: 5), childAspectRatio: 0.6, crossAxisSpacing: 28, mainAxisSpacing: 1),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () => context.goNamed('productDetailScreen'),
                      child: Center(
                        child: ProductListWidget(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 8,),
            Center(child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)),border: Border.all()),
            child: CustomText(text: "See More", fontSize : 14.sp ,padding: EdgeInsets.symmetric(vertical: 6,horizontal: 12),),)),

            SizedBox(height: 18,),
            Divider(height: 1, color: Colors.grey,),
            SizedBox(height: 16,),
            BenefitsWidget(),
            SizedBox(height: 16,),
            Divider(height: 1, color: Colors.grey,),
            SizedBox(
                      height: 420,
                      width: MediaQuery.sizeOf(context).width,
                      child: Row(
                        children: [
                          SizedBox(width: 18,),
                          InkWell(
                            onTap: () {carouselController.previousPage(duration: Duration(milliseconds: 700));},
                            child: Icon(Icons.arrow_circle_left_outlined, size: 3.h,),),
                          Expanded(
                            child: CarouselSlider(
                              carouselController: carouselController,
                                options: CarouselOptions(
                                  enlargeCenterPage: false,
                                  enableInfiniteScroll: false,
                                  viewportFraction: 1,
                                  initialPage: 0 ,
                                  aspectRatio: 1,
                                  autoPlay: false,
                            ),
                              items: _allWidgets
                                  .map((widget) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: _allWidgets
                                    .skip(_allWidgets.indexOf(widget))
                                    .take(ResponsiveLayout.responsiveManual(context, Mob: 1, Tab: 2, Web: 3),)
                                    .toList(),))
                                  .toList()
                            ),
                          ),
                          // ListView.builder(
                          //   itemCount: 3,
                          //   shrinkWrap: true,
                          //   scrollDirection: Axis.horizontal,
                          //   itemBuilder: (context, index) {
                          //     return Padding(
                          //       padding: const EdgeInsets.all(18.0),
                          //       child: Container(
                          //         height: 480,
                          //         child: AspectRatio(
                          //             aspectRatio: 1,
                          //             child: Container(
                          //               color: Colors.grey,
                          //               child: Padding(
                          //                 padding: const EdgeInsets.all(12.0),
                          //                 child: SizedBox(
                          //                   child: Column(
                          //                     crossAxisAlignment:
                          //                         CrossAxisAlignment.start,
                          //                     children: [
                          //                       Expanded(
                          //                         child: Row(
                          //                           children: [
                          //                             Expanded(
                          //                               flex: 3,
                          //                               child: Container(
                          //                                 color: Colors.blue,
                          //                               ),
                          //                             ),
                          //                             SizedBox(
                          //                               width: 12,
                          //                             ),
                          //                             Expanded(
                          //                               flex: 2,
                          //                               child: Column(
                          //                                 mainAxisSize:
                          //                                     MainAxisSize.min,
                          //                                 children: [
                          //                                   Expanded(
                          //                                       child: Container(
                          //                                     color: Colors.green,
                          //                                   )),
                          //                                   SizedBox(
                          //                                     height: 12,
                          //                                   ),
                          //                                   Expanded(
                          //                                       child: Container(
                          //                                     color: Colors.yellow,
                          //                                   )),
                          //                                 ],
                          //                               ),
                          //                             ),
                          //                           ],
                          //                         ),
                          //                       ),
                          //                       CustomText(
                          //                         text: "Design Title",
                          //                         top: 12,
                          //                         fontSize: 16,
                          //                         textAlign: TextAlign.left,
                          //                       )
                          //                     ],
                          //                   ),
                          //                 ),
                          //               ),
                          //             )),
                          //       ),
                          //     );
                          //   },
                          // ),
                          InkWell(
                            onTap: () {carouselController.nextPage(duration: Duration(milliseconds: 700));},
                            child: Icon(Icons.arrow_circle_right_outlined, size: 3.h,),
                          ),
                          SizedBox(width: 18,),
                        ],
                      ),
                    )
          ],
        ),
      ),
    );
  }
}
