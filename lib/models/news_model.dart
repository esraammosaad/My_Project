class NewsModel{
  String ? id;
  String ? name;
  String ? author;
  String ? title;
  String ? describtion;
  String ? url;
  String ? image;
  String ? date;
  String ? content;
  NewsModel(
      {
        required this.id ,
        required this.name ,
        required this.author ,
        required this.title ,
        required this.describtion ,
        required this.url ,
        required this.image ,
        required this.date ,
        required this.content
      });
  NewsModel.FromJson(dynamic data){
    id=data['articles']['source']['id'];
    name=data['articles']['source']['name'];
    author=data['articles']['author'];
    title=data['articles']['title'];
    describtion=data['articles']['description'];
    url=data['articles']['description'];
    image=data['articles']['description'];
    date=data['articles']['description'];
    content=data['articles']['description'];








  }










}