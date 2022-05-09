class CollegeModel {
  int? id;
  String? name;
  String? image;
  String? country;
  String? createdAt;
  String? updatedAt;

  CollegeModel(
      {this.id,
      this.name,
      this.image,
      this.country,
      this.createdAt,
      this.updatedAt});

 factory CollegeModel.fromJson(Map<String, dynamic> json) {
    return CollegeModel(
    id : json['id'],
    name : json['name'],
    image : json['image'],
    country : json['country'],
    createdAt : json['created_at'],
    updatedAt : json['updated_at']
  );
  }

}