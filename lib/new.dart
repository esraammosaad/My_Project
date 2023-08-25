import 'package:flutter/material.dart';
class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {},
          icon:
          Icon(
            Icons.menu,
          ),
        ),

        title: Text(
            "order"
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon:
            Icon(
              Icons.search,
            ),
          ),
        ],
      ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child:
      Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius:BorderRadiusDirectional.only(
                topStart: Radius.circular(20),
                bottomEnd: Radius.circular(20),
              ),
            ),
            child:
            Stack(
                //alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image(
                    height:200 ,
                    width: 200,
                    fit: BoxFit.cover,
                    image: NetworkImage("https://www.chuckecheese.com/wp-content/uploads/2022/04/CEC-22-0063-Website-Menu-Page-Update_stuffed-crust.jpg"),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    width: 200,
                    color: Colors.black.withOpacity(0.7),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){

                          },
                          icon:
                        Icon(

                          Icons.search,
                        ),

                        ),
                        Text(
                          "Pizza",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                          },
                          icon:
                        Icon(
                          Icons.add,
                        ),
                        ),

                        IconButton(
                          onPressed: (){
                          },
                          icon:
                          Icon(
                            Icons.add_chart,
                          ),
                        ),
                      ],
                    ),
                  ),

                ]
            ),


          ),
          SizedBox(width: 20,),
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                borderRadius:BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),




                ),
            ),
            child:



                Stack(


                  alignment: AlignmentDirectional.bottomCenter,
                  children: [


                     Image(
                       height:200 ,
                       width: 200,
                       fit: BoxFit.cover,

                       image: NetworkImage("https://www.chuckecheese.com/wp-content/uploads/2022/04/CEC-22-0063-Website-Menu-Page-Update_stuffed-crust.jpg"),

                     ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      width: 200,
                      color: Colors.black.withOpacity(0.7),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: (){

                              }, icon:
                              Icon(

                                Icons.search,
                              ),

                          ),


                          Text(
                            "Pizza",
                          textAlign: TextAlign.center,
                          style: TextStyle(

                            color: Colors.white,
                            fontSize: 20,


                          ),

                          ),

                          IconButton(
                            onPressed: (){

                            }, icon:
                          Icon(

                            Icons.add,
                          ),

                          ),
                        ],
                      ),
                    ),

                  ]
                  ),


          ),
        ],
      ),
    ),


    );
  }
}
