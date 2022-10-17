import 'dart:convert';

import 'package:daryo/models/news.dart';
import 'package:daryo/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import '../models/article.dart';

class News_Page extends StatefulWidget {
  const News_Page({super.key});
  @override
  State<News_Page> createState() => _News_PageState();
}

class _News_PageState extends State<News_Page> {
  Future<News?> getNews() async {
    String url =
        'https://newsapi.org/v2/everything?q=tesla&from=2022-09-17&sortBy=publishedAt&apiKey=cf269556cda842548e35e58d9e8f4f0d';

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as Map<String, dynamic>;
      return News.fromJson(json);
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<News?>(
      future: getNews(),
      builder: (BuildContext context, AsyncSnapshot<News?> birnima) {
        if (birnima.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (birnima.connectionState == ConnectionState.done) {
          if (birnima.hasData) {
            News? news = birnima.data;
            return NewsItem(news?.articles);
          }
          if (birnima.hasError) {
            return Center(child: Text(birnima.error.toString()));
          }
        }
        return Container(
          child: const Center(
            child: Text(
              "Nimdir xatolik bor",
              style: TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    );
  }

  Widget NewsItem(List<Article>? articles) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: articles?.length ?? 0,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5).r,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${articles?[index].author ?? ''}",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 111, 182, 240)),
                  ),
                  Row(
                    children: [
                      Text(
                        "${articles?[index].publishedAt ?? ''}",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    articles?[index].urlToImage ?? '',
                    width: 120.w,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Text(articles?[index].content ?? ''),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
