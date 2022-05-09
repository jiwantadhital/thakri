class AbroadModel {
  int? id;
  String? title;
  String? slug;
  String? image;
  String? content;
  String? country;
  String? whyCountry;
  String? workingStudying;
  String? opportunity;
  String? facts;
  String? createdAt;
  String? updatedAt;

  AbroadModel(
      {this.id,
      this.title,
      this.slug,
      this.image,
      this.content,
      this.country,
      this.whyCountry,
      this.workingStudying,
      this.opportunity,
      this.facts,
      this.createdAt,
      this.updatedAt});

  factory AbroadModel.fromJson(Map<String, dynamic> json) {
    return AbroadModel(
    id : json['id'],
    title : json['title'],
    slug : json['slug'],
    image : json['image'],
    content : json['content'],
    country : json['country'],
    whyCountry : json['why_country'],
    workingStudying : json['working_studying'],
    opportunity : json['opportunity'],
    facts : json['facts'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at'],
    );
  }
}