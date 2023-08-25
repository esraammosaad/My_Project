import 'package:myproject/notes_app/notesconst.dart';
import 'package:sqflite/sqflite.dart';
import '../models/notesmodel.dart';
import 'package:path/path.dart';

class NdbHelper {
  static Database? database;
  static Future createDatabase() async {
    String dataPath = join(await getDatabasesPath(), "todo.db");
    database = await openDatabase(
      dataPath,
      version: 2,
      onCreate: (db, version) async {
        print('create database');
        await db.execute(
            'CREATE TABLE $tableName ($colId INTEGER PRIMARY KEY , $colTitle TEXT , $colDescribtion TEXT , $colDate TEXT ,$colTime TEXT )');
      },
      onOpen: (db) {
        print('data opened');
      },
    );
  }

  Future<int> insert(NotesModel task) async {
    return await database!.insert(tableName, task.covertToMap());
  }

  Future<int> delete(int id) async {
    return await database!.delete(
      tableName,
      where: '$colId = ?',
      whereArgs: [id],
    );
  }

  Future<int> update(NotesModel task) async {
    return await database!.update(tableName, task.covertToMap(),
        where: '$colId=?', whereArgs: [task.id]);
  }

  Future<List<NotesModel>> getDatabase() async {
    List<Map<String, dynamic>> task = await database!.query(
      tableName,
    );
    List<NotesModel> readData = task.map((e) {
      return NotesModel.convertToObject(e);
    }).toList();
    return readData;
  }
}
