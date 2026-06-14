import 'package:flutter/material.dart';

class ButtonDefaultWidget extends StatelessWidget {
  final String btnLabel;
  final VoidCallback? action;
  const ButtonDefaultWidget({super.key,required this.btnLabel,this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child:ElevatedButton(
       style: ButtonStyle(backgroundColor: .all(Colors.green)),
       onPressed: action,
       child: Text(btnLabel,style: TextStyle(fontWeight: .bold,color: Colors.blue),))
    );
  }
}