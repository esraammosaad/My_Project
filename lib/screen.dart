import 'package:flutter/material.dart';
class App extends StatelessWidget {

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "esraa",
                    style: TextStyle(

                      color: Colors.white,
                    ),
                  ),
                ),


              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    "esraa",
                    style: TextStyle(

                      color: Colors.white,
                    ),
                  ),
                ),


              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.green,
                child: Center(
                  child: Text(
                    "esraa",
                    style: TextStyle(

                      color: Colors.white,
                    ),
                  ),
                ),


              ),
            ],
          ),
        )
    );
  }
}
