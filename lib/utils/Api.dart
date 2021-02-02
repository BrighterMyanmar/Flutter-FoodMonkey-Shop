import 'dart:async';

import 'dart:convert';

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
  static Future<bool> userRegister(name,email,phone,password)async{
    var userData = {"name":name,"email":email,"phone":phone,"password":password};
    var encodedData = jsonEncode(userData);
    print(encodedData);
    return true;
  }
  static Future<bool> userLogin(phone,password)async{
    var userData = {"phone":phone,"password":password};
    var encodedData = jsonEncode(userData);
    print(encodedData);
    return true;
  }

}