import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
class AddPosts extends StatefulWidget {
  const AddPosts({Key? key}) : super(key: key);

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  var bodyControl=TextEditingController();
  var titleControl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                onTap: (){




                },

                controller: titleControl,
                autofocus: true,
                maxLines: null,
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),



                decoration:InputDecoration(
                  hintText: 'YOUR TITLE',
                  // border: InputBorder.none,


                ) ,

              ),
              SizedBox(height: 10,),
              TextField(





                onTap: ( ){



                },

                controller: bodyControl,
                autofocus: true,
                maxLines: null,



                decoration:InputDecoration(
                  hintText: 'YOUR POST',
                  border: InputBorder.none,
                  // suffixIcon: IconButton(
                  //   icon: Icon(
                  //     Icons.date_range,
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




                ) ,

              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(


        onPressed: (){


          CollectionReference products = FirebaseFirestore.instance.collection('posts');
          products.add({
            'title': titleControl.text, // 500
            'body': bodyControl.text, // item 4
          });

          Navigator.of(context).pop();






        },
        label: Text('Save post'),

        icon: Icon(Icons.save),





      ),



    );
  }
}
