class Product {
  String id;
  String image;
  String title;
  String unit;
  String price;
  String expert;

  Product(
      {this.id, this.image, this.title, this.unit, this.price, this.expert});

  Product.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.image = json["image"];
    this.title = json["title"];
    this.unit = json["unit"];
    this.price = json["price"];
    this.expert = json["expert"];
  }

  Map<String, dynamic> toJson() => {
        'id': this.id,
        'image': this.image,
        'title': this.title,
        'unit': this.unit,
        'price': this.price,
        'expert': this.expert
      };
}
