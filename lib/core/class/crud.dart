// ignore_for_file: depend_on_referenced_packages, avoid_print

import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommercecourse/core/class/statusrequest.dart';
import 'package:http/http.dart' as http;

import '../functions/checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    //if (await checkInternet()) {
    var response = await http.post(Uri.parse(linkurl), body: data);
    //  print(response.statusCode);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      Map responsebody = jsonDecode(response.body);

      return Right(responsebody);
    } else {
      return const Left(StatusRequest.serverfailure);
    }
//   } else {
//    return const Left(StatusRequest.offlinefailure);
//  }
  }
}
