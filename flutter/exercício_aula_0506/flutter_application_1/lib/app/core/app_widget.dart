import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),
    );
  }
}