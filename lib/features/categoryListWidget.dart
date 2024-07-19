import 'package:ecommerce/utils/custom_widget/customText.dart';
import 'package:flutter/material.dart';

class Categorylistwidget extends StatelessWidget {
  const Categorylistwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 480,
        child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(flex: 3, child: Container(color: Colors.blue)),
                            SizedBox(width: 12,),
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(child: Container(color: Colors.green,)),
                                  SizedBox(height: 12,),
                                  Expanded(child: Container(color: Colors.yellow,)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomText(text: "Design Title", top: 12, fontSize: 16, textAlign: TextAlign.left,)
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
