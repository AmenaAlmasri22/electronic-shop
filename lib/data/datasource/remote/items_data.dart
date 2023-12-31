import 'package:ecommercecourse/core/class/crud.dart';
import 'package:ecommercecourse/linkapi.dart';

class ItemsData {
  Crud crud;
  ItemsData(this.crud);
  getData(String id) async {
    var response = await crud.postData(LinkApp.items, {"id": id.toString()});
    return response.fold((l) => l, (r) => r);
  }
}
//"id" : id.toString() , "usersid" : userid
//String id, String userid