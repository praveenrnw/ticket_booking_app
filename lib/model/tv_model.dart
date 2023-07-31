import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ticket_booking_app/model/serializers.dart';

part 'tv_model.g.dart';

abstract class TvModel implements Built<TvModel, TvModelBuilder> {
  TvModel._();
  factory TvModel([void Function(TvModelBuilder) updates]) = _$TvModel;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(TvModel.serializer, this)
        as Map<String, dynamic>;
  }

  static TvModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TvModel.serializer, json)!;
  }

  static Serializer<TvModel> get serializer => _$tvModelSerializer;
  int get id;

  @BuiltValueField(wireName: "name")
  String get title;

  @BuiltValueField(wireName: "poster_path")
  String? get image;

  String get imageUrl => 'https://image.tmdb.org/t/p/w500/${image}';

  String get overview;

  @BuiltValueField(wireName: "first_air_date")
  String get releaseDate;

  @BuiltValueField(wireName: "vote_average")
  double get vote;

  @BuiltValueField(wireName: "vote_count")
  int get voteCount;

  @BuiltValueField(wireName: "original_language")
  String get lang;

  double get popularity;
}
