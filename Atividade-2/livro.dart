abstract class Livro{
  final String codigo;
  String _titulo;
  String? autor;

  Livro({required this.codigo, required String titulo, this.autor}) : _titulo = titulo;

  String get titulo => this._titulo;

  set titulo(String novoTitulo){
    String tituloModificado = novoTitulo.trim();
    if (tituloModificado.isNotEmpty){
      this._titulo = tituloModificado;
    }
  }

  
}