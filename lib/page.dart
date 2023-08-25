import 'package:flutter/material.dart';
class Screen extends StatefulWidget {

  State<Screen> createState() => _ScreenState();
}
bool isMale =true;
double height=100 ;
int c=0 , count=0;
class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

            "BMI calculation",

          style: TextStyle(
            color: Colors.white,

          ),
        ),

        backgroundColor: Colors.black12,

      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

                children: [

                  Expanded(
                    child: MaterialButton(
                      onPressed:(){
                        setState(() {

                        });
                        isMale=true;
                      } ,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale==true?Colors.indigo.shade900:Colors.black12,
                        ),

                          height: 200,
                          width: double.infinity,

                          child:
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                height:45 ,
                                width: 45,
                                fit: BoxFit.cover,
                                image: NetworkImage("https://o.remove.bg/downloads/c99d77c4-09bc-4568-a9be-f83a026ac737/5506370-removebg-preview.png"),
                              ),
                              SizedBox(height: 10,),

                              Text(
                                  "Male",
                                      style:
                                TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,


                                ),


                              ),
                            ],



                          ),


                        ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        setState(() {

                        });
                        isMale=false;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale==false?Colors.indigo.shade900:Colors.black12,
                        ),


                        height: 200,
                        width: double.infinity,

                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height:55 ,
                              width: 55,
                              fit: BoxFit.cover,
                              image: NetworkImage("https://o.remove.bg/downloads/2da012e8-ea9f-4737-9c37-e083b7c32681/istockphoto-1284444739-612x612-removebg-preview.png"),
                            ),
                            SizedBox(height: 10,),

                            Text("Female"),
                          ],



                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(

                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12,
                ),

                height: 200,
                width: double.infinity,

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style:
                      TextStyle(
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                            "${height.round()}",
                          style:
                          TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                                ),
                        ),
                        Text(
                          "cm",
                          style:
                          TextStyle(
                              fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      max: 230,
                        min: 60,
                        value: height,

                        onChanged: (value)
                        {
                          setState(() {
                            height=value;
                          });



                        },

                    ),

                  ],



                ),


              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),



                      height: 200,
                      width: double.infinity,

                      child:
                      Column(
                        children: [

                          Text(
                            "Weight",
                            style: TextStyle(

                              fontSize: 20,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(

                              "$count",


                            style: TextStyle(

                              fontSize: 40,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              FloatingActionButton(

                                child: Icon(
                                  Icons.add,


                                ),
                                mini: true,
                                onPressed: (){

                                  setState(() {
                                    count++;
                                  });
                                },
                                heroTag: "W+",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                child: Icon(
                                  Icons.remove,


                                ),
                                mini: true,
                                onPressed: (){

                                  setState(() {

                                    count--;
                                    if(count<=0){
                                    count=0;
                                    }
                                    else
                                      {
                                        count;
                                      }

                                  });
                                },
                                heroTag: "W-",
                              ),
                            ],
                          ),
                        ],



                      ),


                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12,
                      ),



                      height: 200,
                      width: double.infinity,

                      child:
                      Column(
                        children: [

                          Text(
                            "Age",
                            style: TextStyle(

                              fontSize: 20,

                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "$c",
                            style: TextStyle(

                              fontSize: 40,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              FloatingActionButton(

                                child: Icon(
                                  Icons.add,


                                ),
                                mini: true,
                                onPressed: (){

                                  setState(() {
                                    c++;
                                  });
                                },
                                heroTag: "A+",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                child: Icon(
                                  Icons.remove,


                                ),
                                mini: true,
                                onPressed: (){
                                  setState(() {

                                    c--;
                                    if(c<=0){
                                      c=0;
                                    }
                                    else{
                                      c;
                                    }
                                  });
                                },
                                heroTag: "A-",
                              ),
                            ],
                          ),
                        ],



                      ),


                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(



            height: 50,

            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: GestureDetector(
                onTap: (){

                },
                child: Text(
                    "calculate",
                  style: TextStyle(

                    color: Colors.white,
                    fontSize: 20,
                  ),


                ),
              ),
            ),




          ),
        ],


      ),





    );
  }
}
