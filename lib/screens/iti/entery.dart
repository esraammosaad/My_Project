
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'hello.dart';
import 'itiscreen.dart';
class EnetryPage extends StatefulWidget {
  const EnetryPage({Key? key}) : super(key: key);

  @override
  State<EnetryPage> createState() => _EnetryPageState();
}

class _EnetryPageState extends State<EnetryPage> {

  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage();
  }

  nextPage() async {
    final prefs = await SharedPreferences.getInstance();
    String? value = await prefs.getString('email');
    if(value==null){


      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context)
            {
              // return Hello(email: emailControl.text,);
              return Login();
            },

          )

      );
    }
    else{
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context)
            {
              // return Hello(email: emailControl.text,);
              return Hello();
            },

          )

      );



    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
