import 'package:flutter/material.dart';
import 'package:myproject/notes_app/notesconst.dart';
import 'models/notecontroller.dart';
import 'models/notesmodel.dart';
import 'notes_app/notesdbhelper.dart';
// import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NotesModel> note=[];
  final _formkey =GlobalKey<FormState>();
  String time ="";
  String date ="";
  Show() async {

    note=await NdbHelper().getDatabase();
    setState(() {

    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Show();
  }
  Edit(NotesModel notes){
    Keepdata(notes);

    showDialog(

      context: context,
      builder: (context){

        return AlertDialog(
          title: Text('update'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              TextFormField(

                onTap: (){




                },

                controller: noteControl,
                autofocus: true,

                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),





                decoration:InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'YOUR NOTE',
                  suffixIcon:Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(



                          onPressed: (){
                            showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            ).then((value) {
                              print(value.toString());
                              time = value!.format(context).toString();
                            });
                          },

                        icon: Icon(
                          color: Colors.brown[500],

                          Icons.access_time,
                        ),
                      ),
                    ],
                  ) ,



                ) ,

              ),


            ],
          ),
          actions: [
            TextButton(
                onPressed: (){
                  setState(() {

                  });

                  notes.description=noteControl.value.text;
                  notes.time= time;
                  notes.date=date;
                  NoteControl.Update(notes);
                  Show().then((value) {
                    note=value;


                  });
                  Navigator.pop(context);
                  noteControl.clear();

                },
                child: Text('update')

            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);

                },
                child: Text('cancel'))

          ],



        );
      },





    );


  }
  Keepdata(NotesModel notes){

    noteControl=TextEditingController(text: notes.description);









  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
            onPressed: (){

            },
            icon: Icon(
                Icons.menu


            )


        ) ,

        title: Text('your notes'),
        backgroundColor: Colors.brown[500],
        actions: [

          IconButton(
              onPressed: (){

              },
              icon: Icon(
                  Icons.search


              )


          ),
          IconButton(
              onPressed: (){

              },
              icon: Icon(
                  Icons.settings


              )


          ),
        ],
      ),
      body: Form(
        key: _formkey,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    maxLines: 4,
                    validator: (value){
                      if(value!.isEmpty){
                        return'please enter your note';


                      }
                      return null;

                    },
                    controller: noteControl ,
                    decoration: InputDecoration(

                        hintText: "Enter your note here",
                        border: OutlineInputBorder(

                          // borderRadius: BorderRadius.circular(15),

                        )
                    ),
                    onTap: (){
                      time=TimeOfDay.now().format(context).toString();
                      // date=DateFormat.yMMMd().format(DateTime.now()!).toString();



                    },
                  ),
                ),
                ElevatedButton(

                    onPressed: (){

                            if(_formkey.currentState!.validate()){
                              NotesModel Note= NotesModel(

                                // title: titleControl.value.text,
                                description: noteControl.value.text,
                                time: time,
                                date: date,



                              );
                              NoteControl.insertData(Note);
                              setState(() {
                                Show();

                              });
                              noteControl.clear();




                                          }



                    },
                  child: Text('Save Your Note'),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.brown,
                    backgroundColor: Colors.brown[500],

                  ),


                ),

                ListView.builder(
                  itemCount: note.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {

                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: 100,


                        decoration: BoxDecoration(
                          color: Colors.brown[50],
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: ListTile(
                          title: Text('${note[index].description}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),


                          ),
                          subtitle: Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('$time'),
                                Text('$date'),
                              ],
                            ),
                          ),

                          trailing: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(

                                  onPressed:(){


                                    setState(() {
                                      NoteControl().Delete(note[index].id!);
                                      Show();
                                      Show().then((value) {
                                        note = value;
                                      });

                                    }
                                    );

                                  },
                                  color: Colors.grey,
                                  icon: Icon(Icons.delete),


                                ),
                                IconButton(

                                  onPressed:(){

                                    Edit(note[index]);




                                  },
                                  color: Colors.grey,
                                  icon: Icon(Icons.edit),


                                ),
                              ],
                            ),
                          ),


                        ),
                      ),
                    );

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}