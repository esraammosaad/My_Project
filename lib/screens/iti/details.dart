import 'package:flutter/material.dart';
import '../../models/user_model.dart';

class Details extends StatefulWidget {
  String post;
  Details({Key? key , required this.post }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(

          top: 15,
        ),
        child: ListView(

          children: [


            ListTile(
              title: Text("body:" ,
                style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20,

                ),
              ),


              subtitle: Text("${widget.post}",
              style: TextStyle(

                color: Colors.grey[900]
              ),),
            ),
          ],
        ),
      ),



    );
  }
}
