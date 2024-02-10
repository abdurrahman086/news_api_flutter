import 'package:flutter/material.dart';
import 'package:news_api/componets/news.dart';
import 'package:news_api/provider/provider_news.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Consumer<NewsProvider>(
        builder: (BuildContext context, news, Widget? child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Cari Berita'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        decoration: const InputDecoration(
                          hintText: 'Cari Berita ....',
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          news.search(searchController.text);
                        },
                        icon: Icon(Icons.send))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                news.isDataEmpty
                    ? const SizedBox()
                    : news.isLoadingSearch
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            children: [
                              ...news.resSearch!.articles!.map(
                                (e) => News(
                                  title: e.title ?? '',
                                  image: e.urlToImage ?? '',
                                ),
                              ),
                            ],
                          ),
                // const News(
                //   title: "Test",
                //   image:
                //       "https://www.cnbc.com/2024/02/09/pepsico-pep-q4-2023-earnings.html",
                // )
              ],
            ),
          ),
        ),
      );
    });
  }
}
