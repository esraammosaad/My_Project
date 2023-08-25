import 'package:flutter/material.dart';
import '../models/notesmodel.dart';
class Details extends StatefulWidget {
  NotesModel notes ;
   Details({Key? key , required this.notes}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        leading: IconButton(
          onPressed: (){

            Navigator.pop(context);
          },
          icon: Icon(

            Icons.arrow_back,
          ),




        ),

        title: Text(

            'Notes App'
        ),
        // actions: [
        //
        //   IconButton(
        //       onPressed: (){
        //
        //        print('${titleControl.value.text}') ;
        //       },
        //     icon: Icon(Icons.add_chart),
        //
        //
        //   ),
        // ],
      ),
      body: Column(
        children: [
          Text('${widget.notes.title}'),
          SizedBox(height: 20,),
          Text('${widget.notes.description}'),
        ],
      ),














    );
  }
}
