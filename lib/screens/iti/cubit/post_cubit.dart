import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/user_model.dart';
import '../../../services/user_service.dart';
part 'post_state.dart';


class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial()){
  getPost();
}


List<PostModel> posts = [];
getPost() async {
  try {
    emit(PostLoading());
    posts = await PostService().GetPost();
    emit(PostSuccess(posts));
  } catch (e) {
    emit(PostError("Failed to get data"));
  }
}


}
