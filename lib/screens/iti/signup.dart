import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'hello.dart';
import '../../iticonsts.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'itiscreen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formkey =GlobalKey<FormState>();
  final _scaffoldkey =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Padding(
        padding: EdgeInsetsDirectional.only(
          top:20,
          start: 20,
          end: 20,

        ),
        child: Form(
          key: _formkey,
          child: ListView(

            children: [
              Center(
                child:(
                    Image.network('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.fill,


                    )

                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: emailControl,
                autofocus: true,
                validator: (value){
                  if(value!.isEmpty){
                    return'please enter your Email';


                  }
                  return null;

                },

                decoration:InputDecoration(
                  labelText: 'Email',
                  suffixIcon:Icon(

                    Icons.email,
                  ) ,
                  border: OutlineInputBorder(),

                ) ,
                keyboardType: TextInputType.emailAddress,


              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: passControl,
                obscureText: isPasswordHidden,
                validator: (value){
                  if(value!.isEmpty){
                    return'please enter your password';


                  }
                  return null;

                },

                decoration:InputDecoration(
                  labelText: 'Password',
                  suffixIcon:IconButton(

                    onPressed: (){
                      isPasswordHidden = !isPasswordHidden;

                      setState(() {

                      });

                    },
                    icon: Icon(

                      Icons.visibility,
                    ),
                  ) ,
                  border: OutlineInputBorder(),


                ) ,
                keyboardType: TextInputType.visiblePassword,

              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: ()async{

                  if(_formkey.currentState!.validate()){

                    try {
                      final credential =
                      await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: emailControl.text.trim(), password: passControl.text.trim()
                      );
                      if (credential.user != null) {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hello()),
                        );
                      }
                    } on FirebaseAuthException catch (e) {
                      print(e);
                      SnackBar snackBar = SnackBar(
                        content: Text('${e.message}'),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);


                    }


                  }
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('email', emailControl.text );


                },

                child: Text('Sign up'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.grey,
                  backgroundColor: Colors.blue[300],

                ),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text('you already have account ?',
                    style: TextStyle(

                      fontSize: 12,
                    ),


                  ),

                  TextButton(
                    onPressed: (){



                      Navigator.push(context,

                          MaterialPageRoute(builder: (context){


                            return Login();


                          }

                          )


                      );
                    },

                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),

                    ),

                  ),

                ],
              ),



            ],


          ),
        ),
      ),






    );


  }
}
