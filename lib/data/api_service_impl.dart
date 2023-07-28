import 'package:built_collection/built_collection.dart';
import 'package:ticket_booking_app/core/api/api_service.dart';
import 'package:ticket_booking_app/data/api_client_impl.dart';
import 'package:ticket_booking_app/model/cast_model.dart';
import 'package:ticket_booking_app/model/person_details.dart';

import '../core/api/api_client.dart';
import '../model/movie_model.dart';

class _Urls {
  static const String _baseUrl = 'https://api.themoviedb.org/3';

  String get popular => '$_baseUrl/movie/popular';
  String get topRated => '$_baseUrl/movie/top_rated';
  String get upcoming => '$_baseUrl/movie/upcoming';

  String cast(int id) => '$_baseUrl/movie/$id/credits';
  String people(int id) => '$_baseUrl/person/$id';
  String movieCredit(int id) => '$_baseUrl/person/$id/movie_credits';
  String tvCredits(int id) => '$_baseUrl/person/$id/tv_credits';
}

extension on String {
  Uri get getUri => Uri.parse(this);
}

class ApiServiceImpl extends ApiService {
  final ApiClient _httpClient = ApiClientImpl();
  final _Urls url = _Urls();
  static const String _apiKey =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4OWI3MjM3YmJjZmYwZmEwNmU0NzgxMWJkZjBlYTEyMyIsInN1YiI6IjYxMjMzZjY0ZDY1OTBiMDA1ZDgyNmNkOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.g3gysGzbAmwtS9RU_RZ0e1M52_S3hbFB0G9XT9Ba-HA';

  @override
  Future<BuiltList<MovieModel>> getPopularMovies() async {
    try {
      final response = await _httpClient.get(
        url.popular.getUri,
        headers: {
          'Authorization': 'Bearer $_apiKey',
        },
      );

      if (response.isSuccess) {
        final List l = response.jsonMap!['results'] as List;
        List<MovieModel> movie = [];
        for (final i in l) {
          movie.add(MovieModel.fromJson(i));
        }
        return movie.toBuiltList();
      } else {
        throw Exception('Failed to load popular movies');
      }
    } catch (e) {
      throw Exception('Error fetching popular movies: $e');
    }
  }

  @override
  Future<BuiltList<MovieModel>> getTopRatedMovies() async {
    try {
      final response = await _httpClient.get(url.topRated.getUri, headers: {
        'Authorization': 'Bearer $_apiKey',
      });
      if (response.isSuccess) {
        final List results = response.jsonMap!['results'] as List;
        List<MovieModel> movie = [];
        for (final i in results) {
          movie.add(MovieModel.fromJson(i));
        }
        return movie.toBuiltList();
      } else {
        throw Exception('Failed to load top rated movies');
      }
    } catch (e) {
      throw Exception('Error fetching top rated movies: $e');
    }
  }

  @override
  Future<BuiltList<MovieModel>> getUpcomingMovies() async {
    try {
      final response = await _httpClient.get(url.upcoming.getUri, headers: {
        'Authorization': 'Bearer $_apiKey',
      });
      if (response.isSuccess) {
        final List results = response.jsonMap!['results'] as List;
        List<MovieModel> movie = [];
        for (final i in results) {
          movie.add(MovieModel.fromJson(i));
        }
        return movie.toBuiltList();
      } else {
        throw Exception('Failed to load upcoming movies');
      }
    } catch (e) {
      throw Exception('Error fetching upcoming movies: $e');
    }
  }

  @override
  Future<CastModel> getCastDetails(int id) async {
    final response = await _httpClient.get(url.cast(id).getUri, headers: {
      'Authorization': 'Bearer $_apiKey',
    });
    if (response.isSuccess) {
      final results = response.jsonMap!;
      return CastModel.fromJson(results);
    }
    throw Exception('Error while fetching cast details');
  }

  void close() {
    _httpClient.close();
  }

  @override
  Future<PersonDetails> getPersonDetails(int id) async {
    @override
    final response = await _httpClient.get(url.people(id).getUri, headers: {
      'Authorization': 'Bearer $_apiKey',
    });
    if (response.isSuccess) {
      final result = response.jsonMap!;
      return PersonDetails.fromJson(result)!;
    }
    throw Exception('Error while fetching cast details');
  }

  @override
  Future<BuiltList<MovieModel>> getMovieCredits(int id) async {
    try {
      final response =
          await _httpClient.get(url.movieCredit(id).getUri, headers: {
        'Authorization': 'Bearer $_apiKey',
      });
      if (response.isSuccess) {
        final List results = response.jsonMap!['cast'] as List;
        List<MovieModel> movies = [];
        for (final i in results) {
          movies.add(MovieModel.fromJson(i));
        }
        print(movies);
        return movies.toBuiltList();
      } else {
        throw Exception('Failed to load person movies');
      }
    } catch (e) {
      throw Exception('Error fetching person movies: $e');
    }
  }

  @override
  Future<BuiltList<MovieModel>> getTvCredits(int id) async {
    try {
      final response =
          await _httpClient.get(url.tvCredits(id).getUri, headers: {
        'Authorization': 'Bearer $_apiKey',
      });
      if (response.isSuccess) {
        final List results = response.jsonMap!['cast'] as List;
        List<MovieModel> tvShows = [];
        for (final i in results) {
          tvShows.add(MovieModel.fromJson(i));
        }
        return tvShows.toBuiltList();
      } else {
        throw Exception('Failed to load tv shows');
      }
    } catch (e) {
      throw Exception('Error fetching person tv shows: $e');
    }
  }
}
