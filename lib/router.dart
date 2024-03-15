import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pwarnd/main.dart';
import 'package:pwarnd/pages/color_detail_page.dart';
import 'package:pwarnd/payment.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/payment",
      builder: (context, state) => const PaymentSceen(
        amount: 20,
      ),
    ),
    GoRoute(
      path: "/red",
      builder: (context, state) => const ColorDetailPage(color: Colors.red),
    ),
    GoRoute(
      path: "/blue",
      builder: (context, state) => const ColorDetailPage(color: Colors.blue),
    ),
  ]);
}
