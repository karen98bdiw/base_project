import 'package:baseproj/model/core/base_model.dart';
import 'package:baseproj/model/helper/base_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseProvider extends ChangeNotifier {
  BaseHelper helper = BaseHelper();
  bool isLoading = false;
  BaseModel? data;
  Future<void> getData() async {
    isLoading = true;
    notifyListeners();
    final res = await helper.getData();
    res.fold((l) {
      print("exeption");
    }, (r) {
      print("success");
      data = r;
    });
  }
}
