import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);
  postdata(String username ,String password ,String email ,String phone ) async {
    var response = await crud.postData(LinkApp.signup, {
      "username" : username , 
      "password" : password  , 
      "email" : email , 
      "phone" : phone  , 
    });
    return response.fold((l) => l, (r) => r);
  }
}
