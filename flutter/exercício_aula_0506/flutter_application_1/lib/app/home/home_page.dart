import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/home/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  final HomeViewModel viewModel = HomeViewModel();

  String saudacao = '';

  @override
  void initState() {
    super.initState();

    saudacao = viewModel.buscarSaudacao();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(saudacao),
      ),
    );
  }
}