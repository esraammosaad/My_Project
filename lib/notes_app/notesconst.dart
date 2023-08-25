import 'package:flutter/material.dart';

import '../models/notesmodel.dart';
int dbVer=1;
String tableName="Notes";
String colId="ID";
String colTitle="title";
String colDescribtion='describtion';
String colTime='time';
String colDate='date';
String colColor='color';
String colStatus='status';
var noteControl=TextEditingController();
var titleControl=TextEditingController();

List <NotesModel> taskist =[];
List<Color> NoteColor = [
  Colors.green,
  Colors.red,
  Colors.blue,
];