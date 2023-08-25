import 'package:flutter/material.dart';
class Count extends StatefulWidget {
  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int count =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        width: double.infinity,
        alignment: AlignmentDirectional.center,
        child: Center(
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  child: IconButton(onPressed: (){
                    setState(() {

                    });
                    count++;

                  },
                      icon: Icon(

                        Icons.add,
                      ),
                    color: Colors.white,

                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                    "$count",
                  style: TextStyle(
                    color:Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  color: Colors.blue,
                  child: IconButton(onPressed: (){
                    setState(() {

                    });
                    count=0;
                    print(count);

                  },
                    icon: Icon(

                      Icons.restart_alt,
                    ),
                    color: Colors.white,

                  ),
                ),
              ],
            ),

        ),
      ),




    );
  }
}
