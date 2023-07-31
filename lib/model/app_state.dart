import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ticket_booking_app/model/cast_model.dart';
import 'package:ticket_booking_app/model/movie_model.dart';
import 'package:ticket_booking_app/model/person_details.dart';
import 'package:ticket_booking_app/model/tv_model.dart';
import 'serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;

  AppState._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppState.serializer, this)
        as Map<String, dynamic>?;
  }

  static AppState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppState.serializer, json);
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;

  static void _initializeBuilder(AppStateBuilder b) {
    b.count = 0;
  }

  BuiltList<MovieModel>? get popular;
  BuiltList<MovieModel>? get topRated;
  BuiltList<MovieModel>? get upcoming;
  CastModel? get castDetails;
  PersonDetails? get personDetails;
  BuiltList<MovieModel>? get personMovies;
  BuiltList<TvModel>? get personTvShows;

  int? get count;
}
