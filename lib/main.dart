import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myproject/screens/news.dart';
import 'package:myproject/screens/iti/entery.dart';
import 'package:myproject/screens/iti/itiscreen.dart';
import 'package:myproject/screens/iti/signup.dart';
import 'package:myproject/notes_app/notes.dart';
import 'notes_app/notesdbhelper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myproject/notes_app/notes.dart';
import 'package:myproject/test.dart';
import 'api.dart';
import 'newsstart.dart';
import 'firebase_options.dart';
import 'notes_app/notesdbhelper.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await NdbHelper.createDatabase();

  runApp(MyApp());
  List<int> a =[10 , 20 , 30 , 40 , 50];
  int sum =0;
  for(int i=0 ; i<=a.length ; i++)
  {
    sum=sum+ a[i];



  }
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,

       home: Notes(),
     );
   }
 }
