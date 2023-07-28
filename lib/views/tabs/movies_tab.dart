import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/movie_page.dart';
import '../../model/movie_model.dart';

class MoviesTab extends StatefulWidget {
  final int id;
  const MoviesTab({super.key, required this.id});

  @override
  State<MoviesTab> createState() => _MoviesTabState();
}

class _MoviesTabState extends State<MoviesTab> {
  @override
  void initState() {
    _fetchPersonMovies(widget.id);
    super.initState();
  }

  Future<void> _fetchPersonMovies(int id) async {
    try {
      await context.appViewModel.getPersonMovies(id);
    } catch (e) {
      debugPrint('Error fetching person movies: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<MovieModel> movies =
        context.appState.personMovies ?? BuiltList();
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
