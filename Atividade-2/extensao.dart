import 'livro.dart';

extension DescricaoLivro on Livro{
  String get descricao{
    return '${titulo} - ${autor ?? "Autor desconhecido"}';
  }
}