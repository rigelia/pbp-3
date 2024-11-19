class Product {
  String id;
  String name;
  int price;
  String description;
  String effects;
  String? user;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.effects,
    this.user,
  });

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        price = json['price'],
        description = json['description'],
        effects = json['effects'],
        user = json['user'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'description': description,
      'effects': effects,
      'user': user,
    };
  }
}
