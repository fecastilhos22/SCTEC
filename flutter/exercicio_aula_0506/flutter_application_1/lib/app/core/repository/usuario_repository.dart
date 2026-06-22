import 'package:flutter_application_1/app/core/data/usuario_data.dart';

class UsuarioRepository {
  final UsuarioData data = UsuarioData();
  String buscarNome(){
    return data.buscarNome();
  }
}