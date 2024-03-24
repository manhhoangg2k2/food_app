import 'package:flutter/material.dart';
import 'package:food_app/data/items_data.dart';
import 'package:food_app/models/Items.dart';
import 'package:food_app/pages/cart_pages/cart_page.dart';
import 'package:food_app/pages/category_pages/category_page.dart';
import 'package:food_app/pages/detail_pages/items_detail.dart';
import 'package:food_app/pages/order_page/order_page.dart';
import 'package:food_app/pages/order_page/widget/payment_choose.dart';
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
          GoRoute(
            name: "detail",
            path: 'details/:id',
            pageBuilder: (BuildContext context,GoRouterState state) {
              Map data = state.pathParameters;
              return MaterialPage(
                child: ItemDetails(id: data['id']),
              );
            },
          ),
          GoRoute(
            name: "cart",
            path: 'cart',
            pageBuilder: (BuildContext context,GoRouterState state) {
              return MaterialPage(
                child: CartPage(),
              );
            },
            routes: <RouteBase>[
              GoRoute(
                name: "order",
                path: 'order',
                pageBuilder: (BuildContext context,GoRouterState state) {
                  return MaterialPage(
                    child: OrderPage(),
                  );
                },
                routes: <RouteBase>[
                  GoRoute(
                    name: "payments",
                    path: 'payment',
                    builder: (BuildContext context, GoRouterState state) {
                      return PaymentChoose();
                    },
                  ),
                ]
              ),
            ]
          ),
          
        ],
      ),
    ],
  );
}