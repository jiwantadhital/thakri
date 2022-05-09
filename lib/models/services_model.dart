class ServiceModel {
  int? id;
  String? title;
  String? slug;
  String? image;
  String? content;
  String? createdAt;
  String? updatedAt;

  ServiceModel(
      {this.id,
      this.title,
      this.slug,
      this.image,
      this.content,
      this.createdAt,
      this.updatedAt});

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
    id : json['id'],
    title : json['title'],
    slug : json['slug'],
    image : json['image'],
    content : json['content'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at']
    );
  }

}