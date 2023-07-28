import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/movie_page.dart';
import '../../model/cast_model.dart';
import '../../model/movie_model.dart';

class Tab01 extends StatefulWidget {
  const Tab01({super.key});

  @override
  State<Tab01> createState() => _Tab01State();
}

class _Tab01State extends State<Tab01> {
  @override
  void initState() {
    _fetchPopularMovies();
    super.initState();
  }

  Future<void> _fetchPopularMovies() async {
    try {
      await context.appViewModel.getPopular();
    } catch (e) {
      debugPrint('Error fetching popular movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<MovieModel> movies =
        context.appState.popular ?? BuiltList();
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
