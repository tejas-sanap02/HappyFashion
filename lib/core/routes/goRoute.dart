import 'package:ecommerce/features/CategoryFilterScreen/CategoryFIlterScreen.dart';
import 'package:ecommerce/features/home/home.dart';
import 'package:ecommerce/features/productDetails/productDetailsScreen.dart';
import 'package:go_router/go_router.dart' ;

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
    //  builder: (context, state) => CategoryFilterScreen(),//HomePage(),
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'productDetailScreen',
      path: '/productDetailScreen',
      builder: (context, state) => const ProductDetailScreen(),
    ),
    GoRoute(
      name: 'categoryFilterScreen',
      path: '/categoryFilterScreen',
      builder: (context, state) => const CategoryFilterScreen(),
    ),
  ],
);