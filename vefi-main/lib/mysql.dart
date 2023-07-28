import 'package:mysql1/mysql1.dart';
import 'package:flutter/material.dart';

class Mysql {
  static String host = 'blackzafiqz.com',
      user = 'vefi',
      password = 'vefi1234',
      db = 'vefi';
  static int port = 3306;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = ConnectionSettings(
        host: host, port: port, user: user, password: password, db: db);
    return await MySqlConnection.connect(settings);
  }
}
