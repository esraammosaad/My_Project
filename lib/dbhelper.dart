import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'const.dart';
import 'models/users_screen.dart';

class DbHelper {
  static Database? database;
  static Future createDatabase() async {
    String dataPath = "${await getDatabasesPath()}todo.db";
    database = await openDatabase(
      dataPath,
      version: 1,
      onCreate: (db, version) async {
        print('create database');

        await db.execute(
            'CREATE TABLE $tableName ($colId INTEGER PRIMARY KEY , $colTitle TEXT , $colDescribtion TEXT , $colTime TEXT  , $colDate TEXT , $colColor INTEGER , $colStatus TEXT )');
      },
      onOpen: (db) {
        print('data opened');
      },
    );
  }

  Future<int> insert(TaskModel task) async {
    return await database!.insert(tableName, task.covertToMap());
  }

  Future<int> delete(int id) async {
    return await database!.delete(
      tableName,
      where: '$colId = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(TaskModel task) async {
    return await database!.update(tableName, task.covertToMap(),
        where: '$colId=?', whereArgs: [task.id]);
  }

  Future<List<TaskModel>> getDatabase() async {
    List<Map<String, dynamic>> task = await database!.query(
      tableName,
      orderBy: '$colDate ASC',
    );
    List<TaskModel> readData = task.map((e) {
      return TaskModel.convertToObject(e);
    }).toList();
    return readData;
  }
}
