import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/screens/iti/cubit/post_cubit.dart';
import '../../services/user_service.dart';
import 'details.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {



  Delete(int id)async{

    await PostService().DeletePost(id);

  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(),
      child: BlocConsumer<PostCubit, PostState>(
        listener: (context, state) {
          if (state is PostError) {
            final snackbar = SnackBar(
              content: Text(state.errorMessage),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          }

        },
        builder: (context, state) {
          return Scaffold(
            body: state is PostLoading ?
              Center(

              child: CircularProgressIndicator(),
          )

             : ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (newcontext) {
                    //         return Details(
                    //           post: context.read<PostCubit>().posts[index],
                    //         );
                    //       }
                    //
                    //
                    //   ),
                    // );
                  },
                  child: Container(


                    child: ListTile(


                        leading: Text("${index + 1}",
                          style: TextStyle(

                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),


                        ),
                        title: Text(context.read<PostCubit>().posts[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),


                        ),
                        subtitle: Text(context.read<PostCubit>().posts[index].body),
                        trailing: IconButton(

                          icon: Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              Delete(context.read<PostCubit>().posts[index].userId);

                            });
                          },

                        )


                    ),
                  ),
                );
              },

              separatorBuilder: (context, index) => buildSeperatedItem(),

              itemCount: context.read<PostCubit>().posts.length,


            ),
          );
        },
      ),
    );
  }

  Widget buildSeperatedItem() =>
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(

          width: double.infinity,
          color: Colors.grey,
          height: 1,
        ),
      );
}


