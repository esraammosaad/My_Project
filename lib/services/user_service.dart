import 'package:dio/dio.dart';
import '../models/user_model.dart';
class PostService{

  Future <List<PostModel>> GetPost()async{
    List<PostModel> plist =[];
  try {
    var response = await Dio().get('https://jsonplaceholder.typicode.com/posts',);
    var data = response.data;
    data.forEach((element){

      plist.add(PostModel.fromJson(element));

    }
    );
    print(response);
  } catch (e) {
    print(e);
  }

  return plist;
}

  Future  DeletePost(int id) async {

    try {
       await Dio().delete('https://jsonplaceholder.typicode.com/posts'+ '/$id');
      print('post deleted');


    } catch (e) {
      print(e);
    }


  }


}
