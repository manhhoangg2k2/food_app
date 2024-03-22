import 'package:flutter/material.dart';
import 'package:food_app/provider/like_provider.dart';
import 'package:food_app/routers/routers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LikeProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: RouterCustom.router,
      ),
    );
  }
}


