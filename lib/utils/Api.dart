class Api{

  static Future<bool> getAllCats()async{
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
  static Future<bool> getAllSubs()async{
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
  static Future<bool> getAllTags()async{
    await Future.delayed(Duration(seconds: 2));
    return true;
  }

}