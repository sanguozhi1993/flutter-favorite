class HomeCategoryModel {
  HomeCategoryModel({
       String? id,
        String? title,
    String?color,}){
    this.id = id;
    this.title = title;
    this.color = color;
  }

  HomeCategoryModel.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];
  }
  String? id;
  String? title;
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['color'] = color;
    return map;
  }

}