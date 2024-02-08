import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

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
            Row(
              children: [
                SizedBox(
                  width: 150,
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: FancyShimmerImage(
                        boxFit: BoxFit.cover,
                        imageUrl:
                            'https://cdnwpedutorenews.gramedia.net/wp-content/uploads/2022/07/31221845/fungsi-fakta-dalam-berita.jpeg'),
                  ),
                ),
                const Expanded(
                  child: Text(
                      'Sunt ut officia incididunt cupidatat anim sint adipisicing ad. Deserunt anim ut reprehenderit non velit. Ipsum elit eu consectetur minim qui. Velit occaecat nisi sit reprehenderit ea elit laboris incididunt in nostrud.'),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
