import 'package:ecommerce/features/productDetails/productDetailsWidget/selectSizeWidget.dart';
import 'package:ecommerce/features/productListWidget.dart';
import 'package:ecommerce/utils/custom_widget/commonAppbar.dart';
import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CategoryFilterScreen extends StatefulWidget {
  const CategoryFilterScreen({super.key});

  @override
  State<CategoryFilterScreen> createState() => _CategoryFilterScreenState();
}

class _CategoryFilterScreenState extends State<CategoryFilterScreen> {
  double _startValue = 00.0;
  double _endValue = 70.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: CommonAppbar(),titleSpacing: 0,automaticallyImplyLeading: false, ),
      body: Row(
        children: [
          SizedBox(width: 38,),
          Column(
            children: [
              SizedBox(height: 38,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all()),
                  width: 260,
                  padding: EdgeInsets.symmetric(horizontal: 0,vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Filters",fontSize: 18,fontWeight: FontWeight.w700,),
                            CustomText(text: "Clear All",color: Colors.redAccent,)
                        ],),
                      ),
                      SizedBox(height: 8,),
                      Divider(color: Colors.black87,endIndent: 8,indent: 8,),
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          children: [
                            ExpansionTile(
                              dense: true,
                              enabled: true,
                              initiallyExpanded: true,
                              maintainState: true,
                              shape: InputBorder.none,
                              tilePadding: EdgeInsets.zero,
                              expandedAlignment: Alignment.centerLeft,
                              expandedCrossAxisAlignment: CrossAxisAlignment.start,
                              title: CustomText(text: "Category",fontWeight: FontWeight.w600,fontSize: 16,),
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                              ],),
                            Divider(),
                            ExpansionTile(
                              dense: true,
                              enabled: true,
                              initiallyExpanded: true,
                              maintainState: true,
                              shape: InputBorder.none,
                              tilePadding: EdgeInsets.zero,
                              expandedAlignment: Alignment.centerLeft,
                              expandedCrossAxisAlignment: CrossAxisAlignment.start,
                              title: CustomText(text: "Brand",fontWeight: FontWeight.w600,fontSize: 16,),
                              children: [
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: false, onChanged: (value) {},),
                                    CustomText(text: "name"),
                                  ],
                                ),
                              ],),
                            Divider(),
                            ExpansionTile(
                              dense: true,
                              enabled: true,
                              initiallyExpanded: true,
                              maintainState: true,
                              shape: InputBorder.none,
                              tilePadding: EdgeInsets.zero,
                              expandedAlignment: Alignment.centerLeft,
                              expandedCrossAxisAlignment: CrossAxisAlignment.start,
                              title: CustomText(text: "Price",fontWeight: FontWeight.w600,fontSize: 16,),
                              children: [
                                CustomText(text: "Price Range",bottom: 4,),
                
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(height: 38,width: 105,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(),),
                                      child: Center(child: TextField(decoration: InputDecoration(isDense: true,disabledBorder: InputBorder.none,border: InputBorder.none,hintText: "  Min Price"),)),
                                    ),
                                    Icon(CupertinoIcons.minus,size: 16,),
                                    Container(height: 38,width: 105,decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8),),border: Border.all(),),
                                      child: Center(child: TextField(decoration: InputDecoration(isDense: true,disabledBorder: InputBorder.none,border: InputBorder.none,hintText: "  Min Price"),)),
                                    ),
                                  ],
                                ),
                                RangeSlider(
                                  min: 0.0,
                                  max: 100.0,
                
                                  values: RangeValues(_startValue, _endValue),
                                  onChanged: (values) {
                                    setState(() {
                                      _startValue = values.start;
                                      _endValue = values.end;
                                    });
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(text: _startValue.toInt().toString()),
                                      CustomText(text: _endValue.toInt().toString())
                                    ],
                                  ),
                                )
                
                
                
                              ],),
                            Divider(),
                
                            ExpansionTile(
                                dense: true,
                                enabled: true,
                                initiallyExpanded: true,
                                maintainState: true,
                                shape: InputBorder.none,
                                tilePadding: EdgeInsets.zero,
                                expandedAlignment: Alignment.centerLeft,
                                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                                title: CustomText(text: "Size",fontWeight: FontWeight.w600,fontSize: 16,),
                                children: [Wrap(
                                  children:  List.generate(6, (index) =>   SizeListWidget(),).toList(),
                                ),]),
                          ],
                        ),
                      ),
                
                
                
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 28,),
          Expanded(
            child: Column(
            
              children: [
                SizedBox(height: 38,),
                Expanded(child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 0.65,crossAxisSpacing: 28), itemBuilder: (BuildContext context, int index) { return InkWell(
                    onTap: () {
                      context.goNamed('productDetailScreen');
                    },
                    child: ProductListWidget()); },)),
              ],
            ),
          ),
          SizedBox(width: 38,),
        ],
      ),
    );
  }
}

