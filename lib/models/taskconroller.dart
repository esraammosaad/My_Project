
import '../dbhelper.dart';
import 'users_screen.dart';


class TaskControl{
 static DbHelper control =DbHelper();

  static Future insertData(TaskModel task )async {

    await control.insert(task);


  }





}