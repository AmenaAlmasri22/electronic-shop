import 'package:ecommercecourse/linkapi.dart';
import '../../../../core/class/crud.dart';

class SinInData {
  Crud crud;
  SinInData(this.crud);
  postdata(String email, String password) async {
    var response = await crud
        .postData(LinkApp.signin, {"email": email, "password": password});
    return response.fold((l) => l, (r) => r);
  }
}
