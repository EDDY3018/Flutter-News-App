// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import '../repository/news_api.dart';
import '../specs/colors.dart';
import '../view_model/article_view_model.dart';
import '../view_model/articles_view_model.dart';
import 'article_details_screen.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  var articlesListViewModel = ArticlesListViewModel(classRepository: NewsApi());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleViewModel>>(
      future: articlesListViewModel.fetchNewsGeneral(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(
            color: Color.fromARGB(224, 255, 255, 255),
          );
        } else {
          var news = snapshot.data;
          return Scaffold(
            body: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticleDetailsScreen(
                          //  sourceName: news[index]!.sourceName,
                          title: news[index]!.title,
                          author: news[index]!.author,
                          publishedAt: news[index]!.publishedAt,
                          description: news[index]!.description,
                          content: news[index]!.content,
                          urlToImage: news[index]!.urlToImage,
                          url: news[index]!.url,
                        ),
                      ),
                    );
                  }),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0),
                            bottomLeft: Radius.circular(35.0),
                            bottomRight: Radius.circular(35.0),
                          ),
                          child: Image.network(
                            news[index]!.urlToImage,
                            fit: BoxFit.cover,
                            height: 600.0,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 350.0, 0.0, 0),
                            child: Container(
                              height: 200.0,
                              width: 750.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(35.0),
                                elevation: 5.0,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 20, 10, 20),
                                      child: Text(
                                        news[index].title,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Column(
                                          children: [
                                            IconButton(
                                                icon: Icon(
                                                    Icons.ios_share_rounded))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(
                                                  Icons.bookmark_border_sharp),
                                              color: BLACK,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(Icons.favorite),
                                              color: BLACK,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: news == null ? 0 : news!.length,
              viewportFraction: 1,
              scale: 0.9,
              autoplay: false,
            ),
          );
        }
      },
    );
  }
}
