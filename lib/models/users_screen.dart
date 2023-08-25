
import '../const.dart';

class TaskModel{

  int?id;
  String?title;
  String?description;
  String?time;
  String?date;
  String?color;
  String?status;


  TaskModel({

    int ? id,
    String?title,
    String?description,
    String?time,
    String?date,
    String?color,
    String?status,

}){

  this.id = id;
  this.title=title;
  this.description=description;
  this.time=time;
  this.date=date;
  this.color=color;
  this.status=status;

}

Map<String,dynamic>covertToMap(){


    return {
      colId: id,
      colTitle : title,
      colDescribtion:description,
      colTime:time,
      colDate:date,
      colColor:color,
      colStatus:status

    };
}

TaskModel.convertToObject(Map<String,dynamic> map){
    id =map[colId];
    title =map[colTime];
    description=map[colDescribtion];
    time=map[colTime];
    date=map[colDate];
    color=map[colColor];
    status=map[colStatus];
}
}
