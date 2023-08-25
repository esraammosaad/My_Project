import 'package:flutter/material.dart';
import 'counter.dart';
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var passControl = TextEditingController();
  var emailControl =TextEditingController();
  var formKey=GlobalKey <FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(

                children: [
                  Text(
                      "Login",

                style: TextStyle(
                  color:Colors.black ,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,

                ),

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value)
                    {
                      if(value!.isEmpty){

                        return "please enter e-mail";
                      }
                      else
                      {
                        return null ;
                      }

                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: emailControl,
                    decoration: InputDecoration(

                      prefixIcon: Icon(
                        Icons.email,


                      ),

                      border: OutlineInputBorder(),
                      labelText: "E-mail",
                    ),
                    onFieldSubmitted: (value){
                      print(value);
                    },

                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value)
                    {
                      if(value!.isEmpty){

                        return "please enter password";
                      }
                      else
                      {
                        return null ;
                      }

                    },
                    controller:  passControl,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,


                      ),
                      suffixIcon:  Icon(
                        Icons.visibility_off,


                      ),

                      border: OutlineInputBorder(),
                      labelText: "password",
                    ),
                    obscureText: true,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.blue,
                    child: MaterialButton(
                        onPressed:  (){

                          if(formKey.currentState!.validate())
                          {
                            print(emailControl.text);
                            print(passControl.text);

                          }



                        },
                      child: Text(
                        "login",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                          "don't have account ?"

                      ),
                      TextButton(
                        onPressed: (){
                        setState(() {



                        });



                      },
                          child: Text(
                              "register now"
                          ),

                      ),

                    ],
                  )


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
