import 'dart:async';

import 'package:flutter/material.dart';
import 'package:primeiro_projeto_flutter_sctec/core/app_widget.dart';

void bootstrap(){
 return runZonedGuarded(() {
   //Firebase
   //Injeção de dependência
   //Mixpanel
   //Banco de dados, 
   runApp(AppWidget());
 }, (error,stack) {});
}