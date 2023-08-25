import 'package:myproject/notes_app/notesconst.dart';
class NotesModel{

  int?id;
  String?title;
  String?description;
  String?time;
  String?date;



  NotesModel({

    int ? id,
    String?title,
    String?description,
    String?time,
    String?date,


  }){

    this.id = id;
    this.title=title;
    this.description=description;
    this.time=time;
    this.date=date;


  }

  Map<String,dynamic>covertToMap(){


    return {
      colId: id,
      colTitle : title,
      colDescribtion:description,
      colTime:time,
      colDate:date,


    };
  }

  NotesModel.convertToObject(Map<String,dynamic> map){
    id =map[colId];
    title =map[colTitle];
    description=map[colDescribtion];
    time=map[colTime];
    date=map[colDate];

  }
}
