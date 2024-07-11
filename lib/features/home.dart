import 'package:ecommerce/features/categoryListWidget.dart';
import 'package:ecommerce/features/productDetails/productDetailsScreen.dart';
import 'package:ecommerce/utils/custom_widget/commonAppbar.dart';
import 'package:ecommerce/utils/custom_widget/customImg.dart';
import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      appBar:  AppBar(titleSpacing: 0,automaticallyImplyLeading: false,title:CommonAppbar(), ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12),
              child: Container(
                height: 110,
                width: MediaQuery.sizeOf(context).width - 130,
                child: ListView.builder(
                  itemCount: 32,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                              width: 80,
                              height: 80,
                              child: CustomImg(
                                  imgUrl: "assets/icon/cloththumb.svg")),
                          CustomText(
                            text: "text",
                            top: 4,
                          )
                        ],
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
                  Container(
                    color: Colors.grey,
                  )
                ],
                options: CarouselOptions(
                  height: 450,
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
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 28,
                      mainAxisSpacing: 1),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        context.goNamed('productDetailScreen');
                      },
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 350,
                              child: Container(color: Colors.green,),
                            ),
                            CustomText(text: "Zara", top: 6, bottom: 2, fontSize: 14, fontWeight: FontWeight.bold, left: 4,),
                            CustomText(text: "Green Shirt", left: 4,),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomText(text: "RS. 450", left: 5, right: 8,),
                                Text("RS. 900", style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 12),),
                                CustomText(text: "(57% off)", left: 8, fontSize: 12, color: Colors.orangeAccent,),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.timer_outlined, size: 42,),
                    SizedBox(width: 8,),
                    SizedBox(height: 2,),
                    Text("24/7 Customer service",
                      softWrap: true,
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.refresh_thick, size: 42,),
                    SizedBox(width: 8,),
                    Text("10 DAYS EASY RETURNS", softWrap: true, textAlign: TextAlign.end, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.local_shipping_outlined, size: 42,),
                    SizedBox(width: 8,),
                    Text("FREE SHIPPING IN INDIA",
                      softWrap: true,
                      textAlign: TextAlign.end,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
                      height: 420,
                      width: MediaQuery.sizeOf(context).width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 18,
                          ),
                          InkWell(
                            onTap: () {
                              carouselController.previousPage(duration: Duration(milliseconds: 700));
                            },
                            child: Icon(
                              Icons.arrow_circle_left_outlined,
                              size: 42,
                            ),
                          ),
                          Expanded(
                            child: CarouselSlider(
                              carouselController: carouselController,
                                options: CarouselOptions(
                                  enlargeCenterPage: false,
                                  enableInfiniteScroll: false,
                                  viewportFraction: 1,
                                  initialPage: 0 ,
                                  autoPlay: false,
                            ),
                              items: _allWidgets
                                  .map((widget) => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: _allWidgets
                                    .skip(_allWidgets.indexOf(widget))
                                    .take(3)
                                    .toList(),))
                                  .toList(),
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
                            child: Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 42,
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                        ],
                      ),
                    )
          ],
        ),
      ),
    );
  }
}
