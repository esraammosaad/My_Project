import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(


          "BMI results",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black12,



      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                "Age = 20",
              style: TextStyle(

                fontSize: 25,
              ),


            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Gender = Female",
              style: TextStyle(

                fontSize: 25,
              ),


            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "BMI result = 20",
              style: TextStyle(

                fontSize: 25,
              ),


            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "state = normal",
              style: TextStyle(

                fontSize: 25,
              ),


            ),

          ],


        ),
      ),



    );
  }
}
