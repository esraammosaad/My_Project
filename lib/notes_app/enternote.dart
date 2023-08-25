import 'package:flutter/material.dart';
import 'package:myproject/models/notecontroller.dart';
import '../models/notesmodel.dart';
import 'notesconst.dart';
import 'notes.dart';

class NewNote extends StatefulWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  String time = "";
  String date = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),

        title: const Text('Notes App'),
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onTap: () {},
                controller: titleControl,
                autofocus: true,
                maxLines: null,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: 'YOUR TITLE',
                  // suffixIcon:IconButton(
                  //
                  //
                  //
                  //     onPressed: (){
                  //       showTimePicker(
                  //         context: context,
                  //         initialTime: TimeOfDay.now(),
                  //       ).then((value) {
                  //         print(value.toString());
                  //         time = value!.format(context).toString();
                  //       });
                  //     },
                  //
                  //   icon: Icon(
                  //     color: Colors.brown[500],
                  //
                  //     Icons.access_time,
                  //   ),
                  // ) ,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onTap: () {},
                controller: noteControl,
                autofocus: true,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'YOUR NOTE',
                  border: InputBorder.none,
                  // suffixIcon: IconButton(
                  //   icon: Icon(
                  //     color: Colors.brown[500],
                  //     Icons.date_range,
                  //
                  //   ),
                  //
                  //   onPressed: (){
                  //     showDatePicker(
                  //       context: context,
                  //       initialDate: DateTime.now(),
                  //       firstDate: DateTime.now(),
                  //       lastDate: DateTime.parse("2040-01-31"),
                  //     );
                  //   },
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.brown[500],
        onPressed: () async {
          NotesModel Note = NotesModel(
            title: titleControl.value.text,
            description: noteControl.value.text,
            time: TimeOfDay.now().format(context).toString() ,
            date:'',
          );
         await NoteControl.insertData(Note);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Notes();
          }));
          titleControl.clear();
          noteControl.clear();



        },
        label: const Text('Save Note'),
        icon: const Icon(Icons.save),
      ),
    );
  }
}
