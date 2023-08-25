import 'package:flutter/material.dart';
import 'package:myproject/screens/news.dart';
class Entery extends StatefulWidget {
  const Entery({Key? key}) : super(key: key);

  @override
  State<Entery> createState() => _EnteryState();
}

class _EnteryState extends State<Entery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        title: Text('News App'),
      ),
      body: Stack(
        
        
        children: [
           Image(
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,





                image: NetworkImage('https://i.pinimg.com/564x/b7/10/87/b71087c5567d1d943f287f9b2ce7bd31.jpg')
           ),
          Container(


            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Icon(


              Icons.newspaper_outlined,
              color: Colors.grey,
              size: 50,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [


              Container(

                width:double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  // borderRadius:BorderRadiusDirectional.all(
                  //   Radius.circular(50),
                  // ),
                ),
                child: MaterialButton(

                  onPressed: (){
                    Navigator.push(context,

                        MaterialPageRoute(
                            builder: (context){
                              return News();

                            }


                        )

                    );

                  },

                  child: Text('GET STARTED',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,

                    ),
                  ),


                ),
              ),
            ],
          ),



          
          
          
        ],
      ),

      
      
      
      
    );
  }
}
