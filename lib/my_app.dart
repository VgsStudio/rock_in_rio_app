import 'package:flutter/material.dart';
import 'package:rock_in_rio_app/pages/attraction/attraction_page.dart';
import 'package:rock_in_rio_app/themes/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rock In Rio',
      theme: ThemeData(appBarTheme: AppBarTheme(color: AppColors.brandingBlue)),
      home: AttractionPage(),
    );
  }
}
