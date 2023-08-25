import 'package:flutter/material.dart';
import 'itihome.dart';
import 'itiprofile.dart';
import 'itisettings.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  State<NavBar> createState() => _NavBarState();
}
class _NavBarState extends State<NavBar> {
 int  currentindex=0;
 List<Widget> pages = [
   Home(),
   Settings(),
   Profile(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
              label: 'home',
          icon: Icon(Icons.home)



          ),
          BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(Icons.settings)



          ),
          BottomNavigationBarItem(
              label: 'profile',
              icon: Icon(Icons.person)



          ),
        ],
          onTap: (index){
          currentindex=index;
          setState(() {

          });

          },
        currentIndex: currentindex,
      ),





    );
  }
}
