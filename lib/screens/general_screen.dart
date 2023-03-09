import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import '../repository/news_api.dart';
import '../specs/colors.dart';
import '../view_model/article_view_model.dart';
import '../view_model/articles_view_model.dart';
import 'article_details_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
            color: WHITE,
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
                        padding: const EdgeInsets.all(20),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(35.0),
                            bottomLeft: Radius.circular(35.0),
                            bottomRight: Radius.circular(35.0),
                          ),
                          child: Container(
                          height: 200,
                         decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                               news[index]!.urlToImage,
                            )
                          )

                          ),
                          
                          ),
                        ),
                      ),
                      Positioned(
                        top: 150,
                        child: Container(
                          height: 150.0,
                          width: 300.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(30.0),
                            elevation: 10.0,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                  child: Text(
                                    news[index].title,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                   
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 200.0, bottom: 10),
                                      child: FavoriteButton(
                                        iconSize: 30,
                                        isFavorite: false,
                                        // iconDisabledColor: Colors.white,
                                        valueChanged: (isFavorite) {},
                                      ),
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
                );
              },
              itemCount: news == null ? 0 : news!.length,
              viewportFraction: 0.7,
              scale: 0.9,
              autoplay: false,
            ),
          );
        }
      },
      
    );
  }
}
