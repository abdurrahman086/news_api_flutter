// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:news_api/componets/news.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Berita Terkini')),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            News(
              title:
                  "Reprehenderit in proident consequat non aute aliquip id laboris sint dolore deserunt officia et. Dolor elit exercitation anim eu aliquip ipsum consectetur. Ea ea in elit cupidatat reprehenderit aliquip laboris. Ullamco culpa elit consectetur aute ex ipsum ut aliquip culpa veniam minim dolore. Aliqua minim et sunt nostrud eiusmod do. In ea nulla tempor fugiat exercitation ad eu deserunt quis ad reprehenderit deserunt.",
              image:
                  'https://cdnwpedutorenews.gramedia.net/wp-content/uploads/2022/07/31221845/fungsi-fakta-dalam-berita.jpeg',
            ),
          ],
        ),
      )),
    );
  }
}
