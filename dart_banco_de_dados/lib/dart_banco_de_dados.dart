import 'package:dart_banco_de_dados/database.dart';

Future<void> main() async {
  // Banco de Dados
  final database = Database();
  var mysqlConnection = await database.openConnection();

  print(mysqlConnection.toString());

  //INSERT
  var resultado = await mysqlConnection.query(
    'insert into aluno(id, nome) values(?,?)',
    [
      null,
      'Augusto Cezar',
    ],
  );

  print(resultado.affectedRows); //affectedRows => Qtd, de linhas q foram afetadas.

}
