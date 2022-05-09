class BlogModel {
  int? id;
  String? title;
  String? slug;
  String? image;
  String? content;
  String? createdAt;
  String? updatedAt;

  BlogModel(
      {this.id,
      this.title,
      this.slug,
      this.image,
      this.content,
      this.createdAt,
      this.updatedAt});

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
    id : json['id'],
    title : json['title'],
    slug : json['slug'],
    image : json['image'],
    content : json['content'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }

}