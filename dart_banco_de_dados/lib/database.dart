import 'package:mysql1/mysql1.dart';

class Database {

  Future<MySqlConnection> openConnection() { //openConnection, é o nome que eu dei, para abrir a conexao com o banco de dados.

    final settings = ConnectionSettings(
      host: 'localhost', //127.0.0.1 or localhost
      port: 3306, //3306
      user: 'root', //root
      password: '', //dev2099
      db: 'dart_mysql'
    );

    return MySqlConnection.connect(settings);
  }

  
}