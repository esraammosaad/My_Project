import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: Icon(
        Icons.menu,
      ),
      title: Text(
          "bionic"
      ),
      actions: [
        Icon(
          Icons.edit,
        ),
        Icon(
          Icons.notifications,
        ),
        IconButton(
          onPressed: (){

          },
          icon:
          Icon(
            Icons.access_alarm ,
          ),

        ),
      ],
    ),
        body: Padding(
          padding: EdgeInsetsDirectional.only(
            top:20,
            start: 30,
            end: 30,
            bottom: 20,

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),

                    color: Colors.blue,
                    child:Text( style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,

                        ),
                        "B1"),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),

                    color: Colors.red,
                    child:Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                        "B2"),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsetsDirectional.only(
                  top:20,
                  start: 30,
                  end: 30,
                  bottom: 20,

                ),


                color: Colors.green,
                child:Text( style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,

                ),
                    "B3"),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),

                    color: Colors.yellow,
                    child:Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                        "B4"),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),

                    color: Colors.blue,
                    child:Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                        "B5"),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),
                    color: Colors.pinkAccent,
                    child:Icon(
                      color: Colors.yellow,
                      Icons.edit,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),

                    color: Colors.purpleAccent,
                    child:Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,

                    ),
                        "B7"),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      top:20,
                      start: 30,
                      end: 30,
                      bottom: 20,

                    ),

                    color: Colors.grey,
                    child:Icon(
                      Icons.add,

                    ),
                  ),
                ],
              ),


            ],
          ),
        )
    );
  }
}