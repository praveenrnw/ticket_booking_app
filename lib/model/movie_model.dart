import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ticket_booking_app/model/serializers.dart';

part 'movie_model.g.dart';

abstract class MovieModel implements Built<MovieModel, MovieModelBuilder> {
  MovieModel._();

  factory MovieModel([void Function(MovieModelBuilder) updates]) = _$MovieModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieModel.serializer, this)
        as Map<String, dynamic>;
  }

  static MovieModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieModel.serializer, json)!;
  }

  static Serializer<MovieModel> get serializer => _$movieModelSerializer;

  int get id;

  String get title;

  @BuiltValueField(wireName: "poster_path")
  String? get image;

  String get imageUrl => 'https://image.tmdb.org/t/p/w500/${image}';

  String get overview;

  @BuiltValueField(wireName: "release_date")
  String get releaseDate;

  @BuiltValueField(wireName: "vote_average")
  double get vote;

  @BuiltValueField(wireName: "vote_count")
  int get voteCount;

  @BuiltValueField(wireName: "original_language")
  String get lang;

  double get popularity;
}
