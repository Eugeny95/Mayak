import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  int counter = 0;
  dynamic response = 'fdfsdfsdf';
  void incrementCounter() {
    counter++;
    print(counter);
    notifyListeners();
  }

  void getHttp() async {
    try {
      response = await Dio().get('http://www.google.com');
      print(response);
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
