import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter_sctec/app/shared/components/button_default_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(),
      body: Column(
        children: [
          ButtonDefaultWidget(
            btnLabel: 'Outro nome',
            action: (){
              print('btn 1');
            },
          ),
          ButtonDefaultWidget(
            btnLabel: 'Naturo',
            action: (){
              print('Rsengan');
            },
          ),  
        ],
      ),
    );
  }
}