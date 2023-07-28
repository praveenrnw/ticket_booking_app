import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/movie_page.dart';
import '../../model/movie_model.dart';

class TvShowTab extends StatefulWidget {
  final int id;
  const TvShowTab({super.key, required this.id});

  @override
  State<TvShowTab> createState() => _TvShowTabState();
}

class _TvShowTabState extends State<TvShowTab> {
  @override
  void initState() {
    _fetchPersonTvShows(widget.id);
    super.initState();
  }

  Future<void> _fetchPersonTvShows(int id) async {
    try {
      await context.appViewModel.getPersonTvShows(id);
    } catch (e) {
      debugPrint('Error fetching person tv shows: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final BuiltList<MovieModel> movies =
        context.appState.personTvShows ?? BuiltList();
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
