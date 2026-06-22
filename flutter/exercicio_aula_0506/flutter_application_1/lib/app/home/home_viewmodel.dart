import 'package:flutter_application_1/app/core/repository/usuario_repository.dart';

class HomeViewModel {
  final UsuarioRepository repository = UsuarioRepository();
  String buscarSaudacao(){
    String nome = repository.buscarNome();
    return 'Boa noite $nome!';
  }
}