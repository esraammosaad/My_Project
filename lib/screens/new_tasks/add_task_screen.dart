import 'package:flutter/material.dart';


import '../../models/taskconroller.dart';
import '../../models/users_screen.dart';
import '../homelayout.dart';
import 'NewTasks.dart';

class AddTask extends StatelessWidget {
  var titleControl=TextEditingController();
  var timeControl =TextEditingController();
  var dateControl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Add Task",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Task Title :",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5,),
              TextFormField(
                controller: titleControl ,
                decoration: InputDecoration(
                    hintText: "Enter title here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),

                    )
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "Task Time :",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: timeControl ,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.watch_later_outlined,
                      ),
                      onPressed: (){
                        showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                      },
                    ),
                    hintText: "Enter time here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),

                    )
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                "Task Date :",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5,),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: dateControl ,
                decoration: InputDecoration(
                    suffixIcon:
                    IconButton(
                      icon: Icon(
                        Icons.date_range,
                      ),

                      onPressed: (){
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.parse("2040-01-31"),
                        );
                      },
                    ),
                    hintText: "Enter date here",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),

                    )
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          Navigator.push(context,

              MaterialPageRoute(builder: (context){


                return HomeScreen();
              }


              )


          );
          TaskModel tasks= TaskModel(

            title: titleControl.value.text,
            date: dateControl.value.text ,
            time: timeControl.value.text,


          );
          TaskControl.insertData(tasks);


        },
        child: Icon(
          Icons.done,
        ),
      ),
    );
  }
}
