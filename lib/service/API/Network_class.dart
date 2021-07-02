// ignore: camel_case_types
import 'dart:convert';

import 'package:fitflex/service/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class API_Service {
  Future<bool> login(String user, String password) async {
    String authApi = "https://fitflexapi.ahmedhesham.systems/api/login";
    Map<String, String> body = {
      "user": user,
      "password": password,
    };

    var response = await http.post(authApi, body: body);

    if (response.statusCode == 200) {
      try {
        var jsonData = jsonDecode(response.body);

        if (jsonData["key"] == "user") {
          var res = Login_model.fromJson(jsonData);

          return true;
        }
      } catch (Exception) {
        print(Exception);

        return false;
      }
    } else {
      print(response.body);
    }
    return false;
  }

  // ignore: non_constant_identifier_names
  Future<bool> registrastion_User(
    String username,
    String email,
    String gender,
    String levele,
    String password,
  ) async {
    String authApi = "https://fitflexapi.ahmedhesham.systems/api/register";

    Map<String, String> body = {
      "username": username,
      "email": email,
      "gender": gender,
      "levele": levele,
      "password": password,
    };
    var response = await http.post(authApi, body: body);

    if (response.statusCode == 200) {
      try {

        var jsonData = jsonDecode(response.body);
        if(jsonData["msg"]=="user register sucssfully"){
          return true;
        }



      } catch (Exception) {
        return false;

      }
    } else {
      print(response.body);




    }
    return false;
  }
}
