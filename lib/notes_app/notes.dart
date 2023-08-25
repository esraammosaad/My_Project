import 'package:flutter/material.dart';
import 'package:myproject/models/notecontroller.dart';
import '../models/notesmodel.dart';
import 'notedetails.dart';
import 'notesdbhelper.dart';
import 'notesconst.dart';
import 'enternote.dart';

class Notes extends StatefulWidget {
  const Notes({Key? key}) : super(key: key);

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<NotesModel> note = [];
  Show() async {
    note = await NdbHelper().getDatabase();
    setState(() {});
  }
  Edit(NotesModel notes) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('update'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),
          actions: [],
        );
      },
    );
  }
  Keepdata(NotesModel notes) {
    notes.title = titleControl.value.text;
    notes.description = noteControl.value.text;
  }

  @override
  void initState() {
    super.initState();
    Show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('your notes'),
        backgroundColor: Colors.brown[500],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: note.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.brown[50],
                  ),
                  height: 50,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Text(
                            '${note[index].title}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${note[index].description}',
                          ),

                        ],
                      ),

                      IconButton(
                        onPressed: () {
                          setState(() {
                            NoteControl().Delete(note[index].id!);
                            Show();
                            Show().then((value) {
                              note = value;
                            });
                          });
                        },
                        color: Colors.grey,
                        icon: const Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () {
                          Edit(note[index]);
                        },
                        color: Colors.grey,
                        icon: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                ),
              );
            },
            // separatorBuilder: (context, index) {
            //   return Padding(
            //     padding: const EdgeInsets.only(
            //
            //       left: 20,
            //       right: 20,
            //
            //
            //     ),
            //     child: Container(
            //       color: Colors.brown[500],
            //       height: 1,
            //       width: double.infinity,
            //
            //
            //     ),
            //   );
            // },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NewNote();
          }));
        },
        backgroundColor: Colors.brown[500],
        child: const Icon(Icons.add),
      ),
    );
  }
}
