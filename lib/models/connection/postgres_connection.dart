import 'package:postgres/postgres.dart';

class PostgresConnection {
  final PostgreSQLConnection _connection = PostgreSQLConnection(
    '192.168.0.4',
    5432,
    'pgsiti',
    username: 'postgres',
    password: 's3gr3d0',
  );

  Future<List<List<dynamic>>> query() async {
    await _connection.open();
    var result = await _connection.query('select * from usuario');
    await _connection.close();

    return result;
  }
}
