import 'package:built_collection/src/list.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:ticket_booking_app/core/api/api_service.dart';
import 'package:ticket_booking_app/data/api_service_impl.dart';
import 'package:ticket_booking_app/model/cast_model.dart';
import 'package:ticket_booking_app/model/movie_model.dart';
import 'package:ticket_booking_app/model/person_details.dart';

import '../core/view_model/view_model.dart';
import '../model/app_state.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, AppState>(
      create: (_) => AppViewModel(),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<AppState>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel() : super(AppState());
  final ApiService apiService = ApiServiceImpl();

  @override
  Future<void> init() async {}

  void decrement() {
    state = state.rebuild((AppStateBuilder b) => b.count = b.count! - 1);
  }

  void increment() {
    state = state.rebuild((AppStateBuilder b) => b.count = b.count! + 1);
  }

  Future<void> getPopular() async {
    final BuiltList<MovieModel> movie = await apiService.getPopularMovies();
    state = state.rebuild((p0) => p0.popular = movie.toBuilder());
  }

  Future<void> getTopRated() async {
    final BuiltList<MovieModel> movie = await apiService.getTopRatedMovies();
    state = state.rebuild((p0) => p0.topRated = movie.toBuilder());
  }

  Future<void> getUpcoming() async {
    final BuiltList<MovieModel> movie = await apiService.getUpcomingMovies();
    state = state.rebuild((p0) => p0.upcoming = movie.toBuilder());
  }

  Future<void> getCastDetails(int id) async {
    final CastModel cast = await apiService.getCastDetails(id);
    state = state.rebuild((p0) => p0.castDetails = cast.toBuilder());
  }

  Future<void> getPersonDetails(int id) async {
    final PersonDetails person = await apiService.getPersonDetails(id);
    state = state.rebuild((p0) => p0.personDetails = person.toBuilder());
  }

  Future<void> getPersonMovies(int id) async {
    final BuiltList<MovieModel> movie = await apiService.getMovieCredits(id);
    state = state.rebuild((p0) => p0.personMovies = movie.toBuilder());
  }

  Future<void> getPersonTvShows(int id) async {
    final BuiltList<MovieModel> tvShows = await apiService.getTvCredits(id);
    state = state.rebuild((p0) => p0.personTvShows = tvShows.toBuilder());
  }
}
