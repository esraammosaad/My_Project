import 'package:flutter/material.dart';
import 'package:myproject/screens/iti/addpost.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../iticonsts.dart';
import 'firebaseposts.dart';
import 'itiscreen.dart';
import 'nanbar.dart';
class Hello extends StatefulWidget {

   Hello({Key? key }) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  String email="";
  getEmail() async{
    final prefs = await SharedPreferences.getInstance();
    email=  prefs.getString('email') ?? "--";
    setState(() {

    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getEmail();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue[900],



      ),
      body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue[100],
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadiusDirectional.all(
                    Radius.circular(20),
                ),
              ),
              width: 400,
              height:600 ,

            ),
          ),
        ),



        Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 300,
            height:600 ,


            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ListView(


                children: [
                  Image.network(
                      'https://play-lh.googleusercontent.com/0lSvSBuEn0XPFNQB3F6ZoeR3fNENWcbk2sDLM5Hy-Fw4csmpCY4rk4mNeACZD9uEtbqOdQDYxpw',
                    width: 200,
                    height: 150,
                    fit: BoxFit.fill,



                  ),
                  SizedBox(height: 25,),

                  Text('Enjoy your life $email'
                     ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],


                    ),


                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Lorem ipsum dolor sit amet, \n'
                        'consectetur adipiscing elit.\n '
                        'Sed diam lectus',
                    textAlign: TextAlign.center,


                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey[600],

                    ),

                  ),
                  SizedBox(height: 50,),
                  Container(
                    width:40 ,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius:BorderRadiusDirectional.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: MaterialButton(

                      onPressed: (){
                        Navigator.push(context,

                            MaterialPageRoute(
                                builder: (context){
                              return ReadPosts();

                                }


                            )

                        );

                      },

                      child: Text('GET STARTED',
                      style: TextStyle(
                          color: Colors.white,

                      ),
                      ),


                    ),
                  ),

                  Center(
                    child: TextButton(
                      onPressed: (){
                        emailControl.clear();
                        passControl.clear();
                        phonecontrol.clear();




                        Navigator.push(context,

                            MaterialPageRoute(builder: (context){


                              return Login();


                            }

                            )


                        );
                      },

                      child: Text(
                        "Sign out",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        ),

                      ),

                    ),
                  ),


                ],


                  ),
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
