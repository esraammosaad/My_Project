import 'package:flutter/material.dart';
class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter =0;
  int countery=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point Counter',
          style: TextStyle(

            color: Colors.white,
          ),

        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Team X',
                      style: TextStyle(

                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),

                      ),
                      SizedBox(height:10 ,),
                      Text('$counter',
                        style: TextStyle(


                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),


                      ),
                      SizedBox(height:10 ,),
                      MaterialButton(
                        onPressed:() {
                          setState(() {
                            counter++;

                          });


                        },
                        child: Text(
                          "1P",
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),
                        color: Colors.red,


                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed:() {
                          setState(() {
                            counter=counter+2;

                          });


                        },
                        child: Text(
                          "2P",
                          style: TextStyle(
                            color: Colors.white,

                          ),
                        ),
                        color: Colors.red,


                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed:() {
                          setState(() {
                            counter=counter+3;

                          });


                        },
                        child: Text(
                          "3P",
                          style: TextStyle(
                            color: Colors.white,

                          ),

                        ),
                        color: Colors.red,


                      ),






                    ],


                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 1,
                    height: 200,
                    color: Colors.black,


                  ),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      Text('Team X',
                        style: TextStyle(

                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                      SizedBox(height:10 ,),
                      Text('$countery',
                        style: TextStyle(

                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),


                      ),
                      SizedBox(height:10 ,),
                      MaterialButton(
                        onPressed:() {
                          setState(() {
                            countery++;

                          });


                        },
                        child: Text(
                          "1P",
                          style: TextStyle(
                            color: Colors.red,

                          ),
                        ),


                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed:() {
                          setState(() {
                            countery=countery+2;

                          });


                        },
                        child: Text(
                          "2P",
                          style: TextStyle(
                            color: Colors.red,

                          ),
                        ),


                      ),
                      SizedBox(height: 20,),
                      MaterialButton(
                        onPressed:() {
                          setState(() {
                            countery=countery+3;

                          });


                        },
                        child: Text(
                          "3P",
                          style: TextStyle(
                            color: Colors.red,

                          ),
                        ),


                      ),






                    ],


                  ),
                ],
              ),
              SizedBox(height: 20,),
              MaterialButton(
                  onPressed:() {
                    setState(() {
                      counter=0;
                      countery=0;

                    });


                  },
                child: Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.red,

                  ),
                ),


              ),
              SizedBox(height: 5,),
              MaterialButton(
                onPressed:() {
                  setState(() {


                  });



                },
                child: Text(
                  "Game over",
                  style: TextStyle(
                    color: Colors.red,

                  ),
                ),


              ),
            ],
          ),
        ),
      ),





    );
  }
}
