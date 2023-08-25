import 'dart:convert';
import 'package:http/http.dart' as http;

import 'news_model.dart';


class NewsService{
  String baseUrl='https://newsapi.org/v2';
  getNews(String category)async{
    // NewsModel? news;
    try {
      Uri url = Uri.parse(
          '$baseUrl/top-headlines?country=eg&category=$category&apiKey=29d6de43574e4caba2404d20aec66488');
      http.Response response = await http.get(url);

      return  NewsModel.FromJson(jsonDecode(response.body));

    }
    catch(error){
      print('this error ddd:${error.toString()} ');
    }

  }
}