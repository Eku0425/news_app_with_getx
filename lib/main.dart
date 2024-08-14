import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_with_getx/screen/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => Homepage(),
        )
      ],
    );
  }
}
