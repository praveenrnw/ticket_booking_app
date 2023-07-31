import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/model/tv_model.dart';
import 'package:ticket_booking_app/ui.dart';
import 'package:ticket_booking_app/views/tabs/tab.dart';
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
    final BuiltList<TvModel> movies =
        context.appState.personTvShows ?? BuiltList();
    return MyTab(builtList: movies);
  }
}
