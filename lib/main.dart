import 'package:flutter/material.dart';
import 'package:noticias_app/Widget/news_list_view.dart';
import 'Widget/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final newsApi = NewsApi('89f48579c6b14f17b78bf3b7d1768e66');

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Noticias'),
        ),
        body: NewsListView(api: newsApi),
      ),
    );
  }
}
