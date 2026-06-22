import 'dart:async';


import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/app_widget.dart';

void bootstrap(){
  return runZonedGuarded((){

   runApp(AppWidget());
 }, (error,stack){});
}