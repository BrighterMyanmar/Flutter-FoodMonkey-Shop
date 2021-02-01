class Tag{
  String name,image;
  Tag({this.name,this.image});

  factory Tag.fromJson(dynamic data){
    return Tag(
      name: data['name'],
      image : data['image']
    );
  }
}