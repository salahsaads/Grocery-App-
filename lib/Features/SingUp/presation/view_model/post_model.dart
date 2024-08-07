class PostModel {
  String? title;
  PostModel({required this.title});

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      PostModel(title: json["title"]);
}
