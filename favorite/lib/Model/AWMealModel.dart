/// id : "m1"
/// categories : ["c1","c2"]
/// title : "番茄酱意大利面"
/// affordability : 0
/// complexity : 0
/// imageUrl : "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg"
/// duration : 20
/// ingredients : ["4个西红柿","一汤匙橄榄油","1个洋葱","250克意大利面","香料","奶酪（可选）"]
/// steps : ["把西红柿和洋葱切成小块。","烧开水煮沸后加盐。","把意大利面放进开水里，大约10到12分钟就可以做好。","同时加热一些橄榄油，加入切好的洋葱。","两分钟后，加入番茄片、盐、胡椒和其他香料。","一旦意大利面做好了，调味汁就会做好。","在成品盘上随意加些奶酪。"]
/// isGlutenFree : false
/// isVegan : true
/// isVegetarian : true
/// isLactoseFree : true

class AwMealModel {
  AwMealModel({
      String? id, 
      List<String>? categories, 
      String? title, 
      num? affordability, 
      num? complexity, 
      String? imageUrl, 
      num? duration, 
      List<String>? ingredients, 
      List<String>? steps, 
      bool? isGlutenFree, 
      bool? isVegan, 
      bool? isVegetarian, 
      bool? isLactoseFree,}){
    _id = id;
    _categories = categories;
    _title = title;
    _affordability = affordability;
    _complexity = complexity;
    _imageUrl = imageUrl;
    _duration = duration;
    _ingredients = ingredients;
    _steps = steps;
    _isGlutenFree = isGlutenFree;
    _isVegan = isVegan;
    _isVegetarian = isVegetarian;
    _isLactoseFree = isLactoseFree;
}

  AwMealModel.fromJson(dynamic json) {
    _id = json['id'];
    _categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    _title = json['title'];
    _affordability = json['affordability'];
    _complexity = json['complexity'];
    _imageUrl = json['imageUrl'];
    _duration = json['duration'];
    _ingredients = json['ingredients'] != null ? json['ingredients'].cast<String>() : [];
    _steps = json['steps'] != null ? json['steps'].cast<String>() : [];
    _isGlutenFree = json['isGlutenFree'];
    _isVegan = json['isVegan'];
    _isVegetarian = json['isVegetarian'];
    _isLactoseFree = json['isLactoseFree'];
  }
  String? _id;
  List<String>? _categories;
  String? _title;
  num? _affordability;
  num? _complexity;
  String? _imageUrl;
  num? _duration;
  List<String>? _ingredients;
  List<String>? _steps;
  bool? _isGlutenFree;
  bool? _isVegan;
  bool? _isVegetarian;
  bool? _isLactoseFree;
AwMealModel copyWith({  String? id,
  List<String>? categories,
  String? title,
  num? affordability,
  num? complexity,
  String? imageUrl,
  num? duration,
  List<String>? ingredients,
  List<String>? steps,
  bool? isGlutenFree,
  bool? isVegan,
  bool? isVegetarian,
  bool? isLactoseFree,
}) => AwMealModel(  id: id ?? _id,
  categories: categories ?? _categories,
  title: title ?? _title,
  affordability: affordability ?? _affordability,
  complexity: complexity ?? _complexity,
  imageUrl: imageUrl ?? _imageUrl,
  duration: duration ?? _duration,
  ingredients: ingredients ?? _ingredients,
  steps: steps ?? _steps,
  isGlutenFree: isGlutenFree ?? _isGlutenFree,
  isVegan: isVegan ?? _isVegan,
  isVegetarian: isVegetarian ?? _isVegetarian,
  isLactoseFree: isLactoseFree ?? _isLactoseFree,
);
  String? get id => _id;
  List<String>? get categories => _categories;
  String? get title => _title;
  num? get affordability => _affordability;
  num? get complexity => _complexity;
  String? get imageUrl => _imageUrl;
  num? get duration => _duration;
  List<String>? get ingredients => _ingredients;
  List<String>? get steps => _steps;
  bool? get isGlutenFree => _isGlutenFree;
  bool? get isVegan => _isVegan;
  bool? get isVegetarian => _isVegetarian;
  bool? get isLactoseFree => _isLactoseFree;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['categories'] = _categories;
    map['title'] = _title;
    map['affordability'] = _affordability;
    map['complexity'] = _complexity;
    map['imageUrl'] = _imageUrl;
    map['duration'] = _duration;
    map['ingredients'] = _ingredients;
    map['steps'] = _steps;
    map['isGlutenFree'] = _isGlutenFree;
    map['isVegan'] = _isVegan;
    map['isVegetarian'] = _isVegetarian;
    map['isLactoseFree'] = _isLactoseFree;
    return map;
  }

}