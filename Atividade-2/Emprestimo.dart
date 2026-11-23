import 'StatusLivro.dart';

abstract interface class Emprestimo{
  void emprestar();

  void devolver();

  Status consultarDisponibilidade();
}