import 'package:built_collection/built_collection.dart';

import '../../model/cast_model.dart';
import '../../model/movie_model.dart';
import '../../model/person_details.dart';

abstract class ApiService {
  Future<BuiltList<MovieModel>> getPopularMovies();
  Future<BuiltList<MovieModel>> getTopRatedMovies();
  Future<BuiltList<MovieModel>> getUpcomingMovies();
  Future<CastModel> getCastDetails(int id);
  Future<PersonDetails> getPersonDetails(int id);
  Future<BuiltList<MovieModel>> getMovieCredits(int id);
  Future<BuiltList<MovieModel>> getTvCredits(int id);
}
