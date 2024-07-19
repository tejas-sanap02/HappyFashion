import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'core/routes/goRoute.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp.router(
          routerConfig: router,
          title: 'Flutter Keyboard Detection',
          scrollBehavior: MaterialScrollBehavior().copyWith(
            dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.blue,
          ),
        );
      }
    );
  }
}




