
import 'package:flutter/material.dart';

class ResponsiveLayout {

  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static bool   isMobile(BuildContext context) => screenWidth(context) < 768;

  static bool   isTablet(BuildContext context) => screenWidth(context) >= 768 && screenWidth(context) < 1024;

  static bool   isDesktop(BuildContext context) => screenWidth(context) >= 1024;

  static bool   isPortrait(BuildContext context) => MediaQuery.of(context).orientation == Orientation.portrait;

  static bool   isLandscape(BuildContext context) => MediaQuery.of(context).orientation == Orientation.landscape;

  static double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;

  static double navigationBarHeight(BuildContext context) => kToolbarHeight;

  static double appBarHeight(BuildContext context) => kToolbarHeight + MediaQuery.of(context).padding.top;

  static double safeAreaHeight(BuildContext context) => screenHeight(context) - MediaQuery.of(context).padding.top - MediaQuery.of(context).padding.bottom;

  static double safeBlockHorizontal(BuildContext context, double percent) => (screenWidth(context) - MediaQuery.of(context).padding.left - MediaQuery.of(context).padding.right) * percent / 100;

  static double safeBlockVertical(BuildContext context, double percent) => (safeAreaHeight(context)) * percent / 100;

  static double scaleWidth(BuildContext context, double width) => screenWidth(context) * (width / 100);

  static double scaleHeight(BuildContext context, double height) => screenHeight(context) * (height / 100);

  static double scaleText(BuildContext context, double fontSize) => isMobile(context) ? (fontSize * 0.8) : (fontSize * 1.2);

  static EdgeInsets padding(BuildContext context) => MediaQuery.of(context).padding;

  static T responsiveManual<T>(context,{required T Mob,required T Tab,required T Web,}){
    if (isMobile(context)) return Mob;
    else if (isTablet(context)) return Tab;
    else if (isDesktop(context))  return Web;
    else return Mob;
  }
}
