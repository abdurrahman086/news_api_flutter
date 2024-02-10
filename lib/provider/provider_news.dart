import 'package:flutter/material.dart';
import 'package:news_api/helpers/api.dart';
import 'package:news_api/models/topnews_model.dart';
import 'package:news_api/utils/const.dart';

class NewsProvider with ChangeNotifier {
  bool isDataEmpty = true;
  bool isLoading = true;
  bool isLoadingSearch = true;
  TopNewsModel? resNews;
  TopNewsModel? resSearch;

  setLoading(data) {
    isLoading = data;
    notifyListeners();
  }

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

  search(String search) async {
    isDataEmpty = false;
    isLoadingSearch = true;
    notifyListeners();

    final res = await api(
        '${baseUrl}everything?q=${search}&sortBy=popularity&apiKey=$apiKey');

    if (res.statusCode == 200) {
      resSearch = TopNewsModel.fromJson(res.data);
    } else {
      resSearch = TopNewsModel();
    }

    isLoadingSearch = false;
    notifyListeners();
  }
}
