// ignore_for_file: prefer_const_constructors

import 'package:conversor_moedas/app/models/views/home_view.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const AppWidger());
}

class AppWidger extends StatelessWidget {
  const AppWidger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
