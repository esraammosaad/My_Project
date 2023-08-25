part of 'post_cubit.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}


class PostLoading extends PostState {}


class PostSuccess extends PostState {
  List<PostModel> posts;
  PostSuccess(this.posts);
}

class PostError extends PostState {
  String errorMessage;
  PostError(this.errorMessage);
}


