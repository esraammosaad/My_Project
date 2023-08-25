import 'package:flutter/material.dart';

import 'archive_tasks_screen/archive_tasks_screen.dart';
import 'done_tasks/done_tasks_screen.dart';
import 'new_tasks/NewTasks.dart';
import 'new_tasks/add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  var screens=[
    NewTasks(),
    DoneTasks(),
    ArchiveTasks(),
  ];
  var titleBar=[
    'New Tasks',
    'Done Tasks',
    'Archive Tasks',
  ];
  var page;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          titleBar[currentIndex],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.settings,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
        Navigator.push(
            context, MaterialPageRoute(

            builder: (context)

            {

              return AddTask();
            },

        )

        );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState((){});
          currentIndex=index;
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archive',
          ),
        ],
      ) ,
      body: PageView.builder(
        controller: page,
        itemCount: screens.length,
        onPageChanged: (index){
          setState(
                  (){


                  }

          );
          currentIndex=index;
        },
        itemBuilder: (context,index){

            return screens[currentIndex];
          },
      ),
    );
  }
  Future<String> name() async {
    return "Bionic";
  }
}
