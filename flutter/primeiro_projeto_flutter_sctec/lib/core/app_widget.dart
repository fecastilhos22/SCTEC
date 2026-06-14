import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter_sctec/app/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override   
  Widget build(BuildContext context) {//buildContext referencia onde está na árvore
    return MaterialApp(home: HomePage(),
      
    );
  }
}