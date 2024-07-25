
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/shloks_model.dart';

class GitaProvider extends ChangeNotifier {
  List<GitaModal> gitaModalList = [];

  Future<void> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/gita_shloks.json');
    List response = jsonDecode(json);
    gitaModalList = response
        .map(
          (e) => GitaModal.fromJson(e),
    )
        .toList();
    notifyListeners();
  }

  GitaProvider(){
    jsonParsing();
  }
}
