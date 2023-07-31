import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/tabs/tab.dart';
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
    return MyTab(builtList: movies);
  }
}
