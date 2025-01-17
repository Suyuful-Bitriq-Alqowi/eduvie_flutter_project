import 'package:eduvie_movie/binding/binding.dart';
import 'package:eduvie_movie/dashboardpage.dart';
import 'package:eduvie_movie/menu/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
        GetPage(
            name: '/dashboard',
            page: () => DashboardPage(),
            binding: MyBindings()
        ),
      ],
    );
  }
}