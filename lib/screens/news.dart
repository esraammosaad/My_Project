import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../models/newsconroller.dart';
class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int currentIndex=0;
  var page;
  NewsModel? newsData;
  var screens=[
    'technology', 'sports','health'
  ];

  get()async{


    NewsService weather=NewsService();
    newsData= await weather.getNews(screens[currentIndex]!);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

        title: Text('${screens[currentIndex]} news'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,

        onTap: (index){
          currentIndex=index;


          setState((){});

        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.computer,
              color: Colors.black,

            ),
            label: 'Technology',



          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_score,
              color: Colors.black,
            ),
            label: 'Sports',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.health_and_safety_outlined,
              color: Colors.black,
            ),
            label: 'Health',
          ),
        ],
      ) ,
      body: ListView.builder(


          itemBuilder: (context, index) {



          },


      ),



    );
  }
}
