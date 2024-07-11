import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatefulWidget {
  const CommonAppbar({super.key});

  @override
  State<CommonAppbar> createState() => _CommonAppbarState();
}

class _CommonAppbarState extends State<CommonAppbar> {
  @override
  Widget build(BuildContext context) {
    return  Card(
shape: RoundedRectangleBorder(side: BorderSide.none),
      elevation: 1,
      child: SizedBox(
        height: 52,
        child: Row(
          children: [
            SizedBox(
              width: 18,
            ),
            Text("Fashion Logo"),
            SizedBox(
              width: 18,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(text: "Woman", right: 16, fontSize: 18,),
                CustomText(text: "Man", right: 16, fontSize: 18,),
                CustomText(text: "Kids", right: 16, fontSize: 18,),
                CustomText(text: "Home", right: 16, fontSize: 18,),
                CustomText(text: "All Brands", right: 16, fontSize: 18,),
                CustomText(text: "More", right: 16, fontSize: 18,),
              ],
            ),
            Spacer(),
            Container(
                height: 40,
                width: 300,
                child: const TextField(decoration: InputDecoration(hintText: "Search for product", prefixIcon: Icon(Icons.search)),
                )),
            SizedBox(
              width: 18,
            ),
            Row(
                children: [
                  Icon(Icons.person),
                  CustomText(text: "Account", fontSize: 18, left: 8, right: 18,),
                ]
            ),
            Row(
              children: [
                Icon(Icons.favorite_border_outlined),
                CustomText(text: "Wishlist", fontSize: 18, left: 8.0, right: 18),
              ],
            ),
            Row(
              children: [
                Icon(Icons.card_travel_outlined),
                CustomText(text: "Cart", fontSize: 18, left: 8.0, right: 18),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class MyAppbar extends StatelessWidget implements PreferredSizeWidget {

  const MyAppbar();

  @override
  Widget build(BuildContext context) {
    return CommonAppbar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}