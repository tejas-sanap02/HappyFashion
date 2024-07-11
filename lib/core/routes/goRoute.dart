import 'package:ecommerce/features/home.dart';
import 'package:ecommerce/features/productDetails/productDetailsScreen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      name: 'productDetailScreen',
      path: '/productDetailScreen',
      builder: (context, state) => ProductDetailScreen(),
    ),
  ],
);