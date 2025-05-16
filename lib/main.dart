import 'package:bookly_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routing/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: ColorsManager.kPrimaryColor,
      ),
      initialRoute: Pages.initial,
      getPages: Pages.routes,
    );
  }
}
