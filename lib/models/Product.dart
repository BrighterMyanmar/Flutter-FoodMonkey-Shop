class Product{
  int count = 1;
  String name,image,id;

  Product({this.id,this.name,this.image});

  factory Product.fromJson(dynamic data){
    return Product(
      name:data['name'],
      image:data['image'],
      id:data['id']
    );
  }
}