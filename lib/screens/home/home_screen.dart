import 'package:flutter/material.dart';
import 'package:my_movie_app/screens/home/tabs/movie_tab.dart';
import 'package:my_movie_app/screens/home/tabs/tv_show_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WillFlix'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Filmes'),
              Tab(text: 'Novelas/Séries'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MovieTab(),
            TvShowTab(),
          ],
        ),
      ),
    );
  }
}
