import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/provider/provider_utils.dart';

import '../../model/movie_model.dart';
import '../movie_page.dart';

class Tab02 extends StatefulWidget {
  const Tab02({super.key});

  @override
  State<Tab02> createState() => _Tab02State();
}

class _Tab02State extends State<Tab02> {
  @override
  void initState() {
    _fetchTopRatedMovies();
    super.initState();
  }

  Future<void> _fetchTopRatedMovies() async {
    try {
      await context.appViewModel.getTopRated();
    } catch (e) {
      debugPrint('Error fetching top rated movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<MovieModel> movies =
        context.appState.topRated ?? BuiltList();
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 4.0,
      mainAxisSpacing: 8.0,
      children: List.generate(movies.length, (index) {
        final movie = movies[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MoviePage(
                      id: movie.id,
                      poster: movie.imageUrl,
                      date: movie.releaseDate,
                      vote: movie.vote,
                      title: movie.title,
                      overview: movie.overview,
                      popularity: movie.popularity,
                      lang: movie.lang,
                      voteCount: movie.voteCount,
                    )));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Column(
                children: [
                  Image.network(
                    movie.imageUrl,
                    width: 95,
                    height: 95,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    movie.title,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
