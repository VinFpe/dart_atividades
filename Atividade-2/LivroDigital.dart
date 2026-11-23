import 'livro.dart';

class LivroDigital extends Livro{
  final int tamanhoMb;

  LivroDigital({
    required super.codigo,
    required super.titulo,
    super.autor,
    required this.tamanhoMb,
  });
}