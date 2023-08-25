import 'package:myproject/models/notesmodel.dart';
import '../notes_app/notesdbhelper.dart';
class NoteControl{
  static NdbHelper control =NdbHelper();

  static Future insertData(NotesModel task )async {

    await control.insert(task);


  }

   Delete(int id){

    control.delete(id);




  }
  static void Update(NotesModel note)async{

   await control.update(note);




  }







}