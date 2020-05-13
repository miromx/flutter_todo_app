import 'package:fluttertodolistsqfliteapp/repositories/database_connection.dart';

class Repository{
  DatabaseConnection _databaseConnection;

  Repository(){
    //inizialize connection
    _databaseConnection = DatabaseConnection();
  }
}