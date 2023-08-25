import 'package:flutter/material.dart';

class  AddTask extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),



      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(

                  "title",
                style: TextStyle(

                  fontSize: 14,

                ),

              ),
              SizedBox(height: 10,),
              TextFormField(

                decoration: InputDecoration(

                  hintText: "Enter title here ",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
              SizedBox(height: 10,),
              const Text(

                "title",
                style: TextStyle(

                  fontSize: 14,

                ),

              ),
              TextFormField(

                onTap:
                    (){

                      showTimePicker(

                        context: context,
                        initialTime: TimeOfDay.now(),

                  );
                },
                keyboardType: TextInputType.number,


                decoration:
                InputDecoration(
                    hintText: "Enter time here ",
                    suffixIcon: IconButton(
                      onPressed: (
                          ){
                        showTimePicker(
                            context: context,

                            initialTime: TimeOfDay.now(),

                        );

                      },
                      icon: Icon(
                        Icons.watch,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),



            ],



          ),
        ),
      ),




    );
  }
}
