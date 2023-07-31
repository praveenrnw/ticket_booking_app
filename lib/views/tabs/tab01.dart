import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/tabs/tab.dart';
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
    return MyTab(builtList: movies);
  }
}
