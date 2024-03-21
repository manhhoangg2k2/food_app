import 'package:flutter/material.dart';
import 'package:food_app/pages/category_pages/category_page.dart';
import 'package:go_router/go_router.dart';
import 'package:food_app/pages/home_pages/home_page.dart';

class RouterCustom{
    static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'category',
            builder: (BuildContext context, GoRouterState state) {
              return CategoryPage();
            },
          ),
        ],
      ),
    ],
  );
}