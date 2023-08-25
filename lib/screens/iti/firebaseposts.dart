

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myproject/screens/iti/addpost.dart';

import 'details.dart';

class ReadPosts extends StatefulWidget {
  const ReadPosts({Key? key}) : super(key: key);

  @override
  State<ReadPosts> createState() => _ReadPostsState();
}

class _ReadPostsState extends State<ReadPosts> {

  var posts = FirebaseFirestore.instance.collection('posts').snapshots();


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(),
      body: StreamBuilder(
          stream: posts,
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError)  {

              return Text('Something went wrong');

            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                return InkWell(
                  onTap: (){

                    Navigator.push(context,

                        MaterialPageRoute(

                            builder: (context){


                              return Details(post: data['body'] );
                            }
                        )

                    );




                  },
                  child: ListTile(
                    title: Text(data['title']),
                    subtitle: Text(data['body']),
                      trailing: IconButton(

                        icon: Icon(Icons.delete),
                        onPressed: () {
                          CollectionReference post = FirebaseFirestore.instance.collection('posts');
                          post
                              .doc(document.id)
                              .delete()
                              .then((value) => print("User Deleted"))
                              .catchError((error) => print("Failed to delete user: $error"));
                          setState(() {


                          });
                        },

                      )
                  ),
                );
              }).toList(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPosts()),
          );
        },
      ),
    );
  }
}
