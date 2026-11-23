import 'StatusLivro.dart';
import 'Emprestimo.dart';
import 'livro.dart';

class LivroFisico extends Livro implements Emprestimo{
  final int numPaginas;
  Status disponibilidade = Status.disponivel;

  LivroFisico({
    required super.codigo,
    required super.titulo,
    super.autor,
    required this.numPaginas,
  });

  @override
  Status consultarDisponibilidade() {
    return this.disponibilidade;
  }

  @override
  void devolver() {
    if(this.disponibilidade == Status.indisponivel){
      this.disponibilidade = Status.disponivel;
      print("Livro devolvido!");
      return;
    }

    print("Impossivel devolver um livro disponivel!");
    return;
  }

  @override
  void emprestar() {
    if(this.disponibilidade == Status.disponivel){
      this.disponibilidade = Status.indisponivel;
      print("Emprestimo realizado");
      return;
    }

    print("Livro indisponível");
    return;
  }
  
}
