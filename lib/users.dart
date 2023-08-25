import 'package:flutter/material.dart';
class  Users extends StatelessWidget {
  List<UserModel> users=[
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),
    UserModel(
        id: 5555 , name1: "ESRAA" , number1: "777GGG"
    ),




  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

            "calls"

        ),


      ),
      body: ListView.separated(
        separatorBuilder: (context , index)=>buildSeperatedItem(),
        itemCount: users.length,
        itemBuilder: (context , index)=>buildUserItem(users,index),

      ),
    );
  }
  Widget buildUserItem(List<UserModel> users,int index)=>Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: Text(
            "${index+1}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),

          ),


        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${users[index].name}",
              style: TextStyle(

                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),


            ),
            SizedBox(height: 5,),
            Text(
              "hhkjjjjkjkkjjjkkj",
              style: TextStyle(

                fontSize: 15,
                color: Colors.grey,

              ),


            ),


          ],


        ),



      ],


    ),
  );
  Widget buildSeperatedItem()=> Padding(
    padding:  EdgeInsets.all(8.0),
    child: Container(

      width: double.infinity,
      color: Colors.grey,
      height: 1,
    ),
  );

}

class UserModel{
  final id ;
  String ? name;
  String ?number;
  UserModel({
    required this.id ,
    required String name1,
    required String number1,
})
  {
    name =name1;
    number=number1;

  }
}
