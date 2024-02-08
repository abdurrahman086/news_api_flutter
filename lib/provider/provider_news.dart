import 'package:flutter/material.dart';
import 'package:news_api/helpers/api.dart';
import 'package:news_api/models/topnews_model.dart';
import 'package:news_api/utils/const.dart';

class NewsProvider with ChangeNotifier {
  bool isLoading = true;
  TopNewsModel? resNews;

  getTopNews() async {
    // panggil API get news
    final res = await api('${baseUrl}top-headlines?country=us&apiKey=$apiKey');

    if (res.statusCode == 200) {
      resNews = TopNewsModel.fromJson(res.data);
    } else {
      resNews = TopNewsModel();
    }

    isLoading = false;
    notifyListeners();
  }
}
