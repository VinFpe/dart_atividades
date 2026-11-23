import 'LivroDigital.dart';
import 'LivroFisico.dart';
import 'extensao.dart';
import 'livro.dart';

void main() {
  final livros = <Livro>[
    LivroFisico(
      codigo: '001',
      titulo: 'Dom Quixote',
      autor: 'Miguel de Cervantes',
      numPaginas: 1328,
    ),
    LivroDigital(
      codigo: '002',
      titulo: 'Guerra da Papoula',
      tamanhoMb: 12,
    ),
  ];

  for (final livro in livros) {
    print('${livro.codigo} - ${livro.descricao}');
  }

  final livroFisico = livros.first as LivroFisico;

  livroFisico.titulo = 'Novo Titulo';
  print('Novo titulo = ${livroFisico.titulo}');

  livroFisico.titulo = ' ';
  print('Titulo em branco = ${livroFisico.titulo}');

  livroFisico.emprestar();
  livroFisico.emprestar();
  livroFisico.devolver();
  print('Disponibilidade: ${livroFisico.consultarDisponibilidade()}');
}
